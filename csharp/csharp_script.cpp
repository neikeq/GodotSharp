/**********************************************************************************/
/* csharp_script.cpp                                                              */
/**********************************************************************************/
/* The MIT License (MIT)                                                          */
/*                                                                                */
/* Copyright (c) 2016 Ignacio Etcheverry                                          */
/*                                                                                */
/* Permission is hereby granted, free of charge, to any person obtaining a copy   */
/* of this software and associated documentation files (the "Software"), to deal  */
/* in the Software without restriction, including without limitation the rights   */
/* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      */
/* copies of the Software, and to permit persons to whom the Software is          */
/* furnished to do so, subject to the following conditions:                       */
/*                                                                                */
/* The above copyright notice and this permission notice shall be included in all */
/* copies or substantial portions of the Software.                                */
/*                                                                                */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     */
/* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       */
/* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    */
/* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         */
/* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  */
/* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  */
/* SOFTWARE.                                                                      */
/**********************************************************************************/

#include "csharp_script.h"

#include <mono/metadata/debug-helpers.h>
#include <mono/metadata/tokentype.h>
#include <mono/metadata/threads.h>

#include "mono_utils.h"
#include "core/globals.h"
#include "os/file_access.h"
#include "os/os.h"
#include "os/thread.h"

#ifdef TOOLS_ENABLED
#include "scene/main/scene_main_loop.h"
#ifdef DEBUG_METHODS_ENABLED
#include "cs_bindings_generator.h"
#endif
#endif

CSharpLanguage *CSharpLanguage::singleton = NULL;

String CSharpLanguage::get_name() const
{
	return "C#";
}

String CSharpLanguage::get_type() const
{
	return "CSharpScript";
}

String CSharpLanguage::get_extension() const
{
	return "cs";
}

Error CSharpLanguage::execute_file(const String &p_path)
{
	// ??
	return OK;
}

String CSharpLanguage::get_assemblies_path()
{
	// TODO should return a res:// path but currently we can't load assemblies from memory :(
	return "bin/"
#ifdef DEBUG_ENABLED
	"Debug"
#else
	"Release"
#endif
	;
}

void CSharpLanguage::init()
{
#if defined(TOOLS_ENABLED) && defined(DEBUG_METHODS_ENABLED)
	List<String> args = OS::get_singleton()->get_cmdline_args();
	List<String>::Element *E = args.find("-csintf");
	if (E) {
		if (E->next()) {
			generate_cs_interfaces(E->next()->get());
		} else {
			ERR_PRINT("Path to output directory not specified.");
		}
	}
#endif

	OS::get_singleton()->print("Mono: Initializing mono...\n");

	mono_config_parse(NULL);
	domain = mono_jit_init_version("GodotEngineMono", "v4.0.30319");

	ERR_EXPLAIN("Mono: Could not initialize jit");
	ERR_FAIL_COND(!domain);

	mono_thread_set_main(mono_thread_current());
	register_mono_internal_calls();

	String assemblies_path = get_assemblies_path();
	String api_assembly_path = assemblies_path + "/Assembly-CSharp.dll";
	String game_assembly_path = assemblies_path + "/" + Globals::get_singleton()->get("application/name") + ".dll";

	if (FileAccess::exists("res://" + game_assembly_path)) {
		if (!FileAccess::exists("res://" + api_assembly_path)) {
			WARN_PRINT("Mono: Game assembly found but Assembly-CSharp.dll is missing");
			return;
		}

		MonoAssembly *api_assembly = mono_domain_assembly_open(domain, api_assembly_path.utf8());
		ERR_EXPLAIN("Mono: Failed to load Assembly-CSharp.dll");
		ERR_FAIL_COND(!api_assembly);
		api_image = mono_assembly_get_image(api_assembly);

#ifdef TOOLS_ENABLED
		String api_editor_assembly_path = assemblies_path + "/Assembly-CSharp-Editor.dll\n";

		if (FileAccess::exists("res://" + api_editor_assembly_path)) {
			if (SceneTree::get_singleton()->is_editor_hint()) {
				MonoAssembly *api_editor_assembly = mono_domain_assembly_open(domain, api_editor_assembly_path.utf8());
				ERR_EXPLAIN("Mono: Failed to load Assembly-CSharp-Editor.dll\n");
				ERR_FAIL_COND(!api_editor_assembly);
			}
		}
#endif

		MonoAssembly *game_assembly = mono_domain_assembly_open(domain, game_assembly_path.utf8());
		ERR_EXPLAIN("Mono: Failed to load game assembly");
		ERR_FAIL_COND(!game_assembly);
		mono_assembly_set_main(game_assembly);
		game_image = mono_assembly_get_image(game_assembly);

		OS::get_singleton()->print("Mono: Successfully loaded assemblies\n");
	} else {
		OS::get_singleton()->print("Mono: Game assembly not found\n");
	}
}

void CSharpLanguage::finish()
{
	if (!mono_jit_cleaned) {
		mono_jit_cleanup(domain);
		mono_jit_cleaned = true;
	}
}

void CSharpLanguage::get_reserved_words(List<String> *p_words) const
{
	static const char *_reserved_words[]={
		// Reserved keywords
		"abstract",
		"as",
		"base",
		"bool",
		"break",
		"byte",
		"case",
		"catch",
		"char",
		"checked",
		"class",
		"const",
		"continue",
		"decimal",
		"default",
		"delegate",
		"do",
		"double",
		"else",
		"enum",
		"event",
		"explicit",
		"extern",
		"false",
		"finally",
		"fixed",
		"float",
		"for",
		"forech",
		"goto",
		"if",
		"implicit",
		"in",
		"int",
		"interface",
		"internal",
		"is",
		"lock",
		"long",
		"namespace",
		"new",
		"null",
		"object",
		"operator",
		"out",
		"override",
		"params",
		"private",
		"protected",
		"public",
		"readonly",
		"ref",
		"return",
		"sbyte",
		"sealed",
		"short",
		"sizeof",
		"stackalloc",
		"static",
		"string",
		"struct",
		"switch",
		"this",
		"throw",
		"true",
		"try",
		"typeof",
		"uint",
		"ulong",
		"unchecked",
		"unsafe",
		"ushort",
		"using",
		"virtual",
		"volatile",
		"void",
		"while",

		// Contextual keywords. Not reserved words, but I guess we should include
		// them because this seems to be used only for syntax highlighting.
		"add",
		"ascending",
		"by",
		"descending",
		"dynamic",
		"equals",
		"from",
		"get",
		"global",
		"group",
		"in",
		"into",
		"join",
		"let",
		"on",
		"orderby",
		"partial",
		"remove",
		"select",
		"set",
		"value",
		"var",
		"where",
		"yield",
	0};

	const char **w=_reserved_words;

	while (*w) {
		p_words->push_back(*w);
		w++;
	}
}

void CSharpLanguage::get_comment_delimiters(List<String> *p_delimiters) const
{
	p_delimiters->push_back("//");
	p_delimiters->push_back("/* */");
}

void CSharpLanguage::get_string_delimiters(List<String> *p_delimiters) const
{
	p_delimiters->push_back("\" \"");
	p_delimiters->push_back("' '");
}

String CSharpLanguage::get_template(const String &p_class_name, const String &p_base_class_name) const
{
	String _template = String() +
	"using System;\n\n" +
	"using GodotEngine;\n\n" +
	"// Currently the class needs to be in the global namespace.\n" +
	"// The class name must be the same as the file name.\n" +
	"public class %CLASS_NAME% : %BASE_CLASS_NAME%\n" +
	"{\n" +
	"    // Member variables here, example:\n" +
	"    // private int a = 2;\n" +
	"    // private string b = \"textvar\";\n\n" +
	"    void _ready()\n" +
	"    {\n" +
	"        // Called every time the node is added to the scene.\n" +
	"        // Initialization here\n" +
	"        \n" +
	"    }\n" +
	"}\n";

	return _template.replace("%BASE_CLASS_NAME%", p_base_class_name).replace("%CLASS_NAME%", p_class_name);
}

Script *CSharpLanguage::create_script() const
{
	return memnew(CSharpScript);
}

bool CSharpLanguage::has_named_classes() const
{
	return true;
}

String CSharpLanguage::make_function(const String &p_class, const String &p_name, const StringArray &p_args) const
{
	// TODO ScriptEditor API which adds this function is wrong.
	// It will just append the function at the bottom of the file.
	// For now the function is commented and the user must place it correctly...
	String s = "/*private void " + p_name + "(";
	for(int i = 0; i < p_args.size(); i++) {
		if (i > 0)
			s += ", ";
		s += "Variant " + p_args[i];
	}
	s += ")\n{\n    // Replace with function body\n}*/\n";

	return s;
}

void CSharpLanguage::get_recognized_extensions(List<String> *p_extensions) const
{
	p_extensions->push_back("cs");
}

bool CSharpLanguage::debug_break_parse(const String& p_file, int p_line, const String& p_error)
{
	// Break because of parse error
    if (ScriptDebugger::get_singleton() && Thread::get_caller_ID() == Thread::get_main_ID()) {
		// TODO
		//_debug_parse_err_line = p_line;
		//_debug_parse_err_file = p_file;
		//_debug_error = p_error;
		ScriptDebugger::get_singleton()->debug(this, false);
		return true;
    } else {
		return false;
    }
}

bool CSharpLanguage::debug_break(const String& p_error, bool p_allow_continue)
{
    if (ScriptDebugger::get_singleton() && Thread::get_caller_ID() == Thread::get_main_ID()) {
		// TODO
		//_debug_parse_err_line = -1;
		//_debug_parse_err_file = "";
		//_debug_error = p_error;
		ScriptDebugger::get_singleton()->debug(this, p_allow_continue);
		return true;
    } else {
		return false;
    }
}

CSharpLanguage::CSharpLanguage()
{
	ERR_FAIL_COND(singleton);
	singleton = this;

	domain = NULL;
	game_image = NULL;
	api_image = NULL;

	mono_jit_cleaned = false;
}

CSharpLanguage::~CSharpLanguage()
{
	finish();
	singleton = NULL;
}

void CSharpInstance::_ml_call_reversed(MonoClass *clazz, const StringName &p_method, const Variant **p_args, int p_argcount)
{
	MonoClass *base = mono_class_get_parent(clazz);
	if (base && base != script->native)
		_ml_call_reversed(base,p_method,p_args,p_argcount);

	mono_void_call(clazz, get_mono_object(), p_method, p_args, p_argcount);
}

MonoObject *CSharpInstance::get_mono_object() const
{
	return gchandle->get_object();
}

void CSharpInstance::mono_object_disposed()
{
	if (!base_ref)
		return;

	Reference *ref_owner = owner->cast_to<Reference>();

	if (ref_owner->reference_get_count() == 0) {
		memdelete(ref_owner);
		owner = NULL;
	}
}

bool CSharpInstance::set(const StringName &p_name, const Variant &p_value)
{
	MonoClassField *field = mono_class_get_field_from_name(script->script_class, String(p_name).utf8());
	if (field) {
		MonoObject *mono_object = get_mono_object();

		ERR_EXPLAIN("Reference has been garbage collected?");
		ERR_FAIL_COND_V(!mono_object, false);

		mono_field_set_from_variant(mono_object, field, &p_value);
	}

	// TODO _set call must be multilevel

	Variant name = p_name;
	const Variant *args[2] = { &name, &p_value };
	Variant::CallError err;
	Variant ret = call("_set", (const Variant**)args, 2, err);
	if (err.error == Variant::CallError::CALL_OK && ret.get_type() == Variant::BOOL && ret.operator bool())
		return true;

	return false;
}

bool CSharpInstance::get(const StringName &p_name, Variant &r_ret) const
{
	MonoClassField *field = mono_class_get_field_from_name(script->script_class, String(p_name).utf8());
	if (field) {

		MonoObject *mono_object = get_mono_object();

		ERR_EXPLAIN("Reference has been garbage collected?");
		ERR_FAIL_COND_V(!mono_object, false);

		MonoObject *value = mono_field_get_value_object(mono_domain_get(), field, mono_object);
		r_ret = managed_to_variant(value, mono_field_get_type(field));
		return true;
	}

	// TODO _get call must be multilevel

	Variant name = p_name;
	const Variant *args[1] = { &name };
	Variant::CallError err;
	Variant ret = call_const("_get", (const Variant**)args, 1, err);
	if (err.error == Variant::CallError::CALL_OK && ret.get_type() != Variant::NIL) {
		r_ret = ret;
		return true;
	}

	return false;
}

bool CSharpInstance::has_method(const StringName &p_method) const
{
	if (!script.ptr())
		return false;

	MonoClass *top = script->script_class;

	while (top) {
		MonoMethod *m = NULL;
		void *iter = NULL;
		while ((m = mono_class_get_methods(top, &iter))) {
			if (mono_method_get_name(m) == p_method)
				return true;
		}

		top = mono_class_get_parent(top);
	}

	return false;
}

Variant CSharpInstance::call(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error)
{
	return call_const(p_method, p_args, p_argcount, r_error);
}

Variant CSharpInstance::call_const(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error) const
{
	MonoObject *mono_object = get_mono_object();

	ERR_EXPLAIN("Reference has been garbage collected?");
	ERR_FAIL_COND_V(!mono_object, Variant());

	if (!script.ptr())
		return Variant();

	MonoClass *top = script->script_class;

	while (top) {
		MonoMethod *method = mono_class_get_method_from_name(top, String(p_method).utf8(), p_argcount);

		if (method) {
			MonoMethodSignature *sig = mono_method_signature(method);

			int i = 0;
			gpointer iter = NULL;
			MonoType *paramType;

			MonoArray *args = mono_array_new(mono_domain_get(), mono_get_object_class(), p_argcount);

			while ((paramType = mono_signature_get_params(sig, &iter))) {
				MonoObject* boxed_arg = variant_to_managed_of_type(p_args[i], paramType);
				mono_array_set(args, MonoObject*, i, boxed_arg);
				i++;
			}

			MonoObject *exc = NULL;
			MonoObject *result = mono_runtime_invoke_array(method, mono_object, args, &exc);

			if (exc) {
				mono_print_unhandled_exception(exc);
				return Variant();
			} else if (result) {
				return managed_to_variant(result, mono_signature_get_return_type(sig));
			} else { // return type is void?
				return Variant();
			}
		}

		top = mono_class_get_parent(top);
		if (top == script->native)
			break;
	}

	r_error.error = Variant::CallError::CALL_ERROR_INVALID_METHOD;
	return Variant();
}

void CSharpInstance::call_multilevel(const StringName &p_method, const Variant **p_args, int p_argcount)
{
	if (script.ptr()) {
		MonoClass *top = script->script_class;

		while (top) {
			mono_void_call(top, get_mono_object(), p_method, p_args, p_argcount);
			top = mono_class_get_parent(top);
			if (top == script->native)
				break;
		}
	}
}

void CSharpInstance::call_multilevel_reversed(const StringName &p_method, const Variant **p_args, int p_argcount)
{
	if (script.ptr()) {
		_ml_call_reversed(script->script_class, p_method, p_args, p_argcount);
	}
}

void CSharpInstance::refcount_incremented()
{
	if (!base_ref)
		return;

	Reference *ref_owner = owner->cast_to<Reference>();

	if (holding_ref) {
		// The reference count was increased after the managed side was holding the reference,
		// so the reference must hold the managed side again to avoid it being GCed.

		// Release the current weak handle and create a strong one.
		Ref<CSharpGCHandle> strong_gchandle = memnew(CSharpGCHandle(gchandle->get_object()));
		gchandle->release();
		gchandle = strong_gchandle;
		ref_owner->set_meta("__mono_gchandle__", gchandle);
		holding_ref = false;
	}
}

bool CSharpInstance::refcount_decremented()
{
	if (!base_ref)
		return false;

	Reference *ref_owner = owner->cast_to<Reference>();

	if (ref_owner->reference_get_count() == 0) {
		// If the unmanaged reference is no longer referenced in the unmanaged world,
		// the managed side takes responsibility of deleting it when the managed side is GCed.

		// Release the current strong handle and create a weak one.
		Ref<CSharpGCHandle> weak_gchandle = memnew(CSharpGCHandle(gchandle->get_object(), true));
		gchandle->release();
		gchandle = weak_gchandle;
		ref_owner->set_meta("__mono_gchandle__", gchandle);
		holding_ref = true;
	}

	return false;
}

void CSharpInstance::notification(int p_notification)
{
	Variant value = p_notification;
	const Variant *args[1] = { &value };

	call_multilevel("_notification", args, 1);
}

Ref<Script> CSharpInstance::get_script() const
{
	return script;
}

ScriptLanguage *CSharpInstance::get_language()
{
	return CSharpLanguage::get_singleton();
}

CSharpInstance::CSharpInstance()
{
	owner = NULL;
	base_ref = false;
	holding_ref = false;
}

CSharpInstance::~CSharpInstance()
{
	gchandle->release(); // make sure it's released

	if (script.is_valid() && owner) {
		script->instances.erase(owner);
	}
}

#ifdef TOOLS_ENABLED
void CSharpScript::_placeholder_erased(PlaceHolderScriptInstance *p_placeholder)
{
	placeholders.erase(p_placeholder);
}
#endif

#ifdef TOOLS_ENABLED
void CSharpScript::_update_exports_values(Map<StringName,Variant>& values, List<PropertyInfo> &propnames)
{
	// TODO Implement this.
}
#endif

bool CSharpScript::_update_exports()
{
#ifdef TOOLS_ENABLED
	bool changed=false;

	// TODO Implement export attributes?
	// Will need a C# parser or some way to reload assemblies

	if (placeholders.size()) {
		// Update placeholders if any
		Map<StringName,Variant> values;
		List<PropertyInfo> propnames;
		_update_exports_values(values, propnames);

		for (Set<PlaceHolderScriptInstance*>::Element *E = placeholders.front(); E; E = E->next()) {
			E->get()->update(propnames, values);
		}
	}

	return changed;
#endif
	return false;
}

Variant CSharpScript::call(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error)
{
	MonoClass *top = script_class;

	while (top) {
		MonoMethod *method = mono_class_get_method_from_name(top, String(p_method).utf8(), p_argcount);

		if (method) {
			MonoMethodSignature *sig = mono_method_signature(method);

			if (mono_signature_is_instance(sig) == FALSE) {
				int i = 0;
				gpointer iter = NULL;
				MonoType *paramType;

				MonoArray *args = mono_array_new(mono_domain_get(), mono_get_object_class(), p_argcount);

				while ((paramType = mono_signature_get_params(sig, &iter))) {
					MonoObject* boxed_arg = variant_to_managed_of_type(p_args[i], paramType);
					mono_array_set(args, MonoObject*, i, boxed_arg);
					i++;
				}

				MonoObject *exc = NULL;
				MonoObject *result = mono_runtime_invoke_array(method, NULL, args, &exc);

				if (exc) {
					mono_print_unhandled_exception(exc);
					return Variant();
				} else if (result) {
					return managed_to_variant(result, mono_signature_get_return_type(sig));
				} else { // return type is void?
					return Variant();
				}
			}
		}

		top = mono_class_get_parent(top);
		if (top == native)
			break;
	}

	// No static method found. Try regular instance calls
	return Script::call(p_method, p_args, p_argcount, r_error);
}

void CSharpScript::_resource_path_changed()
{
	if (!builtin) {
		name = get_path().basename().get_file();
	}
}

bool CSharpScript::can_instance() const
{
	return valid || (!tool && !ScriptServer::is_scripting_enabled());
}

StringName CSharpScript::get_instance_base_type() const
{
	if (native)
		return StringName(mono_class_get_name(native));
	else
		return StringName();
}

ScriptInstance *CSharpScript::instance_create(Object *p_this)
{
	if (!script_class)
		return NULL;

	if (p_this->has_meta("__mono_gchandle__")) {
		CSharpInstance* instance = memnew( CSharpInstance );
		instance->base_ref = p_this->cast_to<Reference>();
		instance->script = Ref<CSharpScript>(this);
		instance->owner = p_this;
		instance->owner->set_script_instance(instance);
		instance->gchandle = p_this->get_meta("__mono_gchandle__");

		return instance;
	}

	if (!tool && !ScriptServer::is_scripting_enabled()) {
#ifdef TOOLS_ENABLED
		PlaceHolderScriptInstance *si = memnew(PlaceHolderScriptInstance(CSharpLanguage::get_singleton(), Ref<Script>(this), p_this));
		placeholders.insert(si);
		_update_exports();
		return si;
#else
		return NULL;
#endif
	}

	if (native) {
		String native_name = mono_class_get_name(native);
		if (!ObjectTypeDB::is_type(p_this->get_type_name(), native_name)) {
			if (ScriptDebugger::get_singleton()) {
				CSharpLanguage::get_singleton()->debug_break_parse(get_path(), 0, "Script inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_this->get_type() + "'");
			}
			ERR_EXPLAIN("Script inherits from native type '" + native_name + "', so it can't be instanced in object of type: '" + p_this->get_type() + "'");
			ERR_FAIL_V(NULL);
		}
	}

	/* STEP 1, CREATE */

	CSharpInstance* instance = memnew( CSharpInstance );
	instance->base_ref = p_this->cast_to<Reference>();
	instance->script = Ref<CSharpScript>(this);
	instance->owner = p_this;
	instance->owner->set_script_instance(instance);

	/* STEP 2, INITIALIZE AND CONSTRUCT */

	MonoObject *mono_object = mono_object_new(CSharpLanguage::get_singleton()->domain, script_class);

	if (!mono_object) {
		instance->script = Ref<CSharpScript>();
		instance->owner->set_script_instance(NULL);
		ERR_FAIL_COND_V(!mono_object, NULL); // Error constructing
	}

	instances.insert(instance->owner);

	if (native) {
		// Initialize pointers in the native base classes before constructing the object
		MonoMethodDesc *desc = mono_method_desc_new (":internal_init(intptr)", FALSE);
		MonoMethod *native_base_init = mono_method_desc_search_in_class(desc, native);
		mono_method_desc_free (desc);

		void *args [1];
		args [0] = &instance->owner;
		mono_runtime_invoke(native_base_init, mono_object, args, NULL);
	}

	// Call default constructor if any
	mono_runtime_object_init(mono_object);

	// Tie managed to unmanaged
	instance->gchandle = Ref<CSharpGCHandle>(memnew(CSharpGCHandle(mono_object)));
	instance->owner->set_meta("__mono_gchandle__", instance->gchandle);

	/* STEP 3, PARTY */

	return instance;
}

bool CSharpScript::instance_has(const Object *p_this) const
{
	return instances.has((Object*) p_this);
}

bool CSharpScript::has_source_code() const
{
	return !source.empty();
}

String CSharpScript::get_source_code() const
{
	return source;
}

void CSharpScript::set_source_code(const String &p_code)
{
	if (source == p_code)
		return;
	source = p_code;
/*#ifdef TOOLS_ENABLED
	source_changed_cache=true;
#endif*/
}

Error CSharpScript::reload()
{
	MonoImage *game_image = CSharpLanguage::get_singleton()->game_image;

	if (game_image) {
		/* Currently the class needs to be in the global namespace.
		 * A possible workaround to allow script classes inside namespaces
		 * could be to iterate through all the assembly namespaces
		 * until we find the class with the name we are looking for.
		 */
		script_class = mono_class_from_name(game_image, "", name.utf8());

		if (script_class) {
			native = mono_class_get_native_class(script_class);
			return OK;
		}
	}

	return ERR_FILE_MISSING_DEPENDENCIES;
}

String CSharpScript::get_node_type() const
{
	return ""; // ?
}

ScriptLanguage *CSharpScript::get_language() const
{
	return CSharpLanguage::get_singleton();
}

Error CSharpScript::load_source_code(const String &p_path)
{
	DVector<uint8_t> sourcef;
	Error err;
	FileAccess *f = FileAccess::open(p_path, FileAccess::READ, &err);
	ERR_FAIL_COND_V(err, err);

	int len = f->get_len();
	sourcef.resize(len + 1);
	DVector<uint8_t>::Write w = sourcef.write();
	int r = f->get_buffer(w.ptr(), len);
	f->close();
	memdelete(f);
	ERR_FAIL_COND_V(r != len, ERR_CANT_OPEN);
	w[len] = 0;

	String s;
	if (s.parse_utf8((const char*)w.ptr())) {

		ERR_EXPLAIN("Script '" + p_path + "' contains invalid unicode (utf-8), so it was not loaded. Please ensure that scripts are saved in valid utf-8 unicode.");
		ERR_FAIL_V(ERR_INVALID_DATA);
	}

	source = s;
/*#ifdef TOOLS_ENABLED
	source_changed_cache=true;
#endif*/
	return OK;
}

String CSharpScript::get_script_name() const
{
	return name;
}

void CSharpScript::_init()
{
	tool = false;

	// TODO must be false by default and then validated
	valid = true;

	native = NULL;
	script_class = NULL;
}

CSharpScript::CSharpScript()
{
	_init();
	builtin = false;
	_resource_path_changed();
}

CSharpScript::CSharpScript(const String &p_class_name)
{
	// TODO I am not sure if this is the right way to make it work as a built-in script
	_init();
	builtin = true;
	name = p_class_name;
	reload();
}

/*************** RESOURCE ***************/

RES ResourceFormatLoaderCSharpScript::load(const String &p_path, const String& p_original_path, Error *r_error)
{
	if (r_error)
		*r_error=ERR_FILE_CANT_OPEN;

	CSharpScript *script = memnew( CSharpScript );

	Ref<CSharpScript> scriptres(script);

	Error err = script->load_source_code(p_path);
	ERR_FAIL_COND_V(err != OK, RES());

	script->set_path(p_original_path);

	script->reload();

	if (r_error)
		*r_error=OK;

	return scriptres;
}

void ResourceFormatLoaderCSharpScript::get_recognized_extensions(List<String> *p_extensions) const
{
	p_extensions->push_back("cs");
}

bool ResourceFormatLoaderCSharpScript::handles_type(const String& p_type) const
{
	return (p_type=="Script" || p_type=="CSharpScript");
}

String ResourceFormatLoaderCSharpScript::get_resource_type(const String &p_path) const
{
	String el = p_path.extension().to_lower();
	if (el=="cs")
		return "CSharpScript";
	return "";
}

Error ResourceFormatSaverCSharpScript::save(const String &p_path,const RES& p_resource,uint32_t p_flags)
{
	Ref<CSharpScript> sqscr = p_resource;
	ERR_FAIL_COND_V(sqscr.is_null(), ERR_INVALID_PARAMETER);

	String source = sqscr->get_source_code();

	Error err;
	FileAccess *file = FileAccess::open(p_path, FileAccess::WRITE, &err);
	ERR_FAIL_COND_V(err, err);

	file->store_string(source);
	if (file->get_error() != OK && file->get_error() != ERR_FILE_EOF) {
		memdelete(file);
		return ERR_CANT_CREATE;
	}
	file->close();
	memdelete(file);
	return OK;
}

void ResourceFormatSaverCSharpScript::get_recognized_extensions(const RES& p_resource,List<String> *p_extensions) const
{
	if (p_resource->cast_to<CSharpScript>()) {
		p_extensions->push_back("cs");
	}

}

bool ResourceFormatSaverCSharpScript::recognize(const RES& p_resource) const
{
	return p_resource->cast_to<CSharpScript>() != NULL;
}
