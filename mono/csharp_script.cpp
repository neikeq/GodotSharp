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

#include "core/globals.h"
#include "os/file_access.h"
#include "os/os.h"
#include "os/thread.h"

#ifdef TOOLS_ENABLED
#ifdef DEBUG_METHODS_ENABLED
#include "cs_bindings_generator.h"
#endif
#endif

#include "extended_errors.h"
#include "mono_wrapper/gd_mono_class.h"

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

	mono = memnew(GDMono);

	String assemblies_path = "bin/"
#ifdef DEBUG_ENABLED
			"Debug"
#else
			"Release"
#endif
			;

	mono->initialize(assemblies_path);
}

void CSharpLanguage::finish()
{
	memdelete(mono);
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
		0
	};

	const char **w = _reserved_words;

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
	"public class %CLASS_NAME% : %BASE_CLASS_NAME%\n" +
	"{\n" +
	"    // Member variables here, example:\n" +
	"    // private int a = 2;\n" +
	"    // private string b = \"textvar\";\n\n" +
	"    new void _ready()\n" +
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
	// TODO Use some proper library for this
	// For now this will just append the function at the bottom of the file and commented
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

void CSharpLanguage::thread_enter()
{
	//_mono_thread = mono_thread_attach(domain);
}

void CSharpLanguage::thread_exit()
{
	/*if (_mono_thread) {
		mono_thread_detach(_mono_thread);
	}*/
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

	//_mono_thread = NULL;

	mono = NULL;
}

CSharpLanguage::~CSharpLanguage()
{
	finish();
	singleton = NULL;
}

void CSharpInstance::_ml_call_reversed(GDMonoClass *klass, const StringName &p_method, const Variant **p_args, int p_argcount)
{
	GDMonoClass *base = klass->get_parent_class();
	if (base && base != script->native)
		_ml_call_reversed(base, p_method, p_args, p_argcount);

	GDMonoMethod *method = klass->get_method(p_method, p_argcount);

	if (method) {
		method->invoke(get_mono_object(), p_args);
	}
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
	GDMonoField *field = script->script_class->get_field(p_name);

	if (field) {
		MonoObject *mono_object = get_mono_object();

		ERR_EXPLAIN("Reference has been garbage collected?");
		ERR_FAIL_COND_V(!mono_object, false);

		field->set_value(mono_object, p_value);
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
	GDMonoField *field = script->script_class->get_field(p_name);

	if (field) {
		MonoObject *mono_object = get_mono_object();

		ERR_EXPLAIN("Reference has been garbage collected?");
		ERR_FAIL_COND_V(!mono_object, false);

		MonoObject *value = field->get_value(mono_object);
		r_ret = GDMonoUtils::mono_object_to_variant(value, field->get_type());
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

	GDMonoClass *top = script->script_class;

	while (top) {
		if (top->has_method(p_method)) {
			return true;
		}

		top = top->get_parent_class();
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

	ERR_FAIL_COND_V_EXPLAIN(!mono_object, Variant(), "Reference has been garbage collected?");

	if (!script.ptr())
		return Variant();

	GDMonoClass *top = script->script_class;

	while (top) {
		GDMonoMethod *method = top->get_method(p_method, p_argcount);

		if (method) {
			MonoObject* return_value = method->invoke(mono_object, p_args);

			if (return_value) {
				return GDMonoUtils::mono_object_to_variant(return_value, method->get_return_type());
			} else {
				return Variant();
			}
		}

		top = top->get_parent_class();
		if (top == script->native)
			break;
	}

	r_error.error = Variant::CallError::CALL_ERROR_INVALID_METHOD;

	return Variant();
}

void CSharpInstance::call_multilevel(const StringName &p_method, const Variant **p_args, int p_argcount)
{
	if (script.ptr()) {
		MonoObject* mono_object = get_mono_object();

		GDMonoClass *top = script->script_class;

		while (top && top != script->native) {
			GDMonoMethod* method = top->get_method(p_method, p_argcount);

			if (method)
				method->invoke(mono_object, p_args);

			top = top->get_parent_class();
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
	GDMonoClass *top = script_class;

	while (top) {
		GDMonoMethod *method = top->get_method(p_method, p_argcount);

		if (method && method->is_instance_method()) {
			MonoObject *result = method->invoke(NULL, p_args);

			if (result) {
				return GDMonoUtils::mono_object_to_variant(result, method->get_return_type());
			} else {
				return Variant();
			}
		}

		top = top->get_parent_class();
		if (top == native)
			break;
	}

	// No static method found. Try regular instance calls
	return Script::call(p_method, p_args, p_argcount, r_error);
}

void CSharpScript::_resource_path_changed()
{
	String path = get_path();

	if (!path.empty()) {
		name = get_path().basename().get_file();
	}
}

Ref<CSharpScript> CSharpScript::create_for_managed_type(GDMonoClass *p_class)
{
	if (!p_class)
		return NULL;

	Ref<CSharpScript> script = memnew(CSharpScript());

	script->name = p_class->get_name();
	script->script_class = p_class;
	script->native = GDMonoUtils::get_class_native_base(script->script_class);

	return script;
}

bool CSharpScript::can_instance() const
{
	return valid || (!tool && !ScriptServer::is_scripting_enabled());
}

StringName CSharpScript::get_instance_base_type() const
{
	if (native)
		return native->get_name();
	else
		return StringName();
}

ScriptInstance *CSharpScript::instance_create(Object *p_this)
{
	if (!valid)
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
		String native_name = native->get_name();
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

	MonoObject *mono_object = mono_object_new(GDMono::get_singleton()->get_domain(), script_class->get_raw_class());

	if (!mono_object) {
		instance->script = Ref<CSharpScript>();
		instance->owner->set_script_instance(NULL);
		ERR_FAIL_COND_V(!mono_object, NULL); // Error constructing
	}

	instances.insert(instance->owner);

	if (native) {
		// Initialize pointers in the native base classes before constructing the object
		GDMonoMethod* native_base_init = native->get_method_with_desc(":internal_init(intptr)", false);

		void *params[1];
		params[0] = &instance->owner;
		native_base_init->invoke_raw(mono_object, params);
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

Error CSharpScript::reload(bool p_keep_state)
{
	// TODO Assembly reloading
	GDMonoAssembly *project_assembly = GDMono::get_singleton()->get_project_assembly();

	if (project_assembly) {
		script_class = project_assembly->get_object_derived_class(name);

		if (script_class) {
			native = GDMonoUtils::get_class_native_base(script_class);
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

CSharpScript::CSharpScript()
{
	tool = false;

	// TODO must be false by default and then validated?
	valid = true;

	native = NULL;
	script_class = NULL;

	_resource_path_changed();
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
	return p_type == "Script" || p_type == "CSharpScript";
}

String ResourceFormatLoaderCSharpScript::get_resource_type(const String &p_path) const
{
	String el = p_path.extension().to_lower();
	if (el == "cs")
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
