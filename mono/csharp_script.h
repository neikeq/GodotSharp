/**********************************************************************************/
/* csharp_script.h                                                                */
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

#ifndef CSHARP_SCRIPT_H
#define CSHARP_SCRIPT_H

#include "core/script_language.h"

#include "io/resource_loader.h"
#include "io/resource_saver.h"

#include "csharp_gc_handle.h"

#include "mono_wrapper/gd_mono.h"
#include "mono_wrapper/gd_mono_header.h"

#ifdef NO_SAFE_CAST
#define castCSharpInstance(m_inst) ((m_inst->get_language() == CSharpLanguage::get_singleton()) ? static_cast<CSharpInstance*>(m_inst) : NULL)
#else
#define castCSharpInstance(m_inst) dynamic_cast<CSharpInstance*>(m_inst)
#endif

class CSharpScript;
class CSharpInstance;
class CSharpLanguage;

class CSharpScript : public Script
{
	OBJ_TYPE(CSharpScript, Script)

friend class CSharpInstance;
friend class CSharpLanguage;

	/* TODO */ bool tool;
	/* TODO */ bool valid;

	bool builtin;

	GDMonoClass *base;
	GDMonoClass *native;
	GDMonoClass *script_class;

#ifdef TOOLS_ENABLED
	void _update_exports_values(Map<StringName,Variant>& values, List<PropertyInfo> &propnames);
#endif

	Set<Object*> instances;

	String source;
	String name;

#ifdef TOOLS_ENABLED
	Map<StringName,Variant> member_default_values;

	Set<PlaceHolderScriptInstance*> placeholders;
	virtual void _placeholder_erased(PlaceHolderScriptInstance *p_placeholder);
#endif

	Map<StringName, PropertyInfo> properties_info;

	bool _update_exports();

protected:
	Variant call(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error);
	virtual void _resource_path_changed();

public:
	static Ref<CSharpScript> create_for_managed_type(GDMonoClass* p_class);

	virtual bool can_instance() const;
	virtual StringName get_instance_base_type() const;
	virtual ScriptInstance *instance_create(Object *p_this);
	virtual bool instance_has(const Object *p_this) const;
	virtual bool has_source_code() const;
	virtual String get_source_code() const;
	virtual void set_source_code(const String &p_code);
	/* TODO */ bool has_method(const StringName &p_method) const { return false; }
	/* TODO */ MethodInfo get_method_info(const StringName &p_method) const { return MethodInfo(); }
	virtual Error reload(bool p_keep_state=false);
	virtual bool is_tool() const { return tool; }
	virtual String get_node_type() const;
	virtual ScriptLanguage *get_language() const;
	/* TODO */ virtual bool has_script_signal(const StringName &p_signal) const { return false; }
	/* TODO */ virtual void get_script_signal_list(List<MethodInfo> *r_signals) const {}
	/* TODO */ virtual bool get_property_default_value(const StringName &p_property, Variant &r_value) const { return true; }
	virtual void update_exports();
	/* TODO */ virtual void get_method_list(List<MethodInfo> *p_list) const {}

	/* TODO */ virtual Ref<Script> get_base_script() const { return Ref<Script>(); }
	/* TODO */ virtual void get_script_method_list(List<MethodInfo> *p_list) const {}
	virtual void get_script_property_list(List<PropertyInfo> *p_list) const;

	Error load_source_code(const String& p_path);

	String get_script_name() const;

	CSharpScript();
};

class CSharpInstance : public ScriptInstance
{
friend class CSharpScript;
friend class CSharpLanguage;
	Object *owner;
	Ref<CSharpScript> script;
	Ref<CSharpGCHandle> gchandle;
	bool base_ref;

	bool holding_ref;

	void _ml_call_reversed(GDMonoClass *klass, const StringName& p_method, const Variant** p_args, int p_argcount);

public:
	MonoObject *get_mono_object() const;

	void mono_object_disposed();

	Variant call_const(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error) const;

	virtual bool set(const StringName &p_name, const Variant &p_value);
	virtual bool get(const StringName &p_name, Variant &r_ret) const;
	virtual void get_property_list(List<PropertyInfo> *p_properties) const;
	virtual Variant::Type get_property_type(const StringName &p_name, bool *r_is_valid) const;

	/* TODO */ virtual void get_method_list(List<MethodInfo> *p_list) const {}
	virtual bool has_method(const StringName &p_method) const;
	virtual Variant call(const StringName &p_method, const Variant **p_args, int p_argcount, Variant::CallError &r_error);
	virtual void call_multilevel(const StringName &p_method, const Variant **p_args, int p_argcount);
	virtual void call_multilevel_reversed(const StringName &p_method, const Variant **p_args, int p_argcount);

	void refcount_incremented();
	bool refcount_decremented();

	/* TODO */ RPCMode get_rpc_mode(const StringName &p_method) const { return RPC_MODE_DISABLED; }
	/* TODO */ RPCMode get_rset_mode(const StringName &p_variable) const { return RPC_MODE_DISABLED; }

	virtual void notification(int p_notification);

	virtual Ref<Script> get_script() const;

	virtual ScriptLanguage *get_language();

	CSharpInstance();
	~CSharpInstance();
};

class CSharpLanguage : public ScriptLanguage
{
friend class CSharpScript;
friend class CSharpInstance;
friend class CSharpGCHandle;

	static CSharpLanguage *singleton;

	GDMono* mono;

public:
	_FORCE_INLINE_ static CSharpLanguage *get_singleton() { return singleton; }

	bool debug_break(const String& p_error, bool p_allow_continue = true);
	bool debug_break_parse(const String& p_file, int p_line, const String& p_error);

	virtual String get_name() const;

	/* LANGUAGE FUNCTIONS */
	virtual String get_type() const;
	virtual String get_extension() const;
	virtual Error execute_file(const String &p_path);
	virtual void init();
	virtual void finish();

	/* EDITOR FUNCTIONS */
	virtual void get_reserved_words(List<String> *p_words) const;
	virtual void get_comment_delimiters(List<String> *p_delimiters) const;
	virtual void get_string_delimiters(List<String> *p_delimiters) const;
	virtual Ref<Script> get_template(const String &p_class_name, const String &p_base_class_name) const;
	/* TODO */ virtual bool validate(const String &p_script, int &r_line_error, int &r_col_error, String &r_test_error, const String &p_path, List<String> *r_functions) const { return true; }
	virtual Script *create_script() const;
	virtual bool has_named_classes() const;
	/* TODO */ virtual int find_function(const String &p_function, const String &p_code) const { return -1; }
	virtual String make_function(const String &p_class, const String &p_name, const StringArray &p_args) const;
	/* TODO? */ // Error complete_code(const String &p_code, const String &p_base_path, Object *p_owner, List<String> *r_options, String &r_call_hint);
	/* TODO? */ virtual void auto_indent_code(String &p_code, int p_from_line, int p_to_line) const {}
	/* TODO */ virtual void add_global_constant(const StringName &p_variable, const Variant &p_value) {}

	/* DEBUGGER FUNCTIONS */
	/* TODO */ virtual String debug_get_error() const { return ""; }
	/* TODO */ virtual int debug_get_stack_level_count() const { return 1; }
	/* TODO */ virtual int debug_get_stack_level_line(int p_level) const { return 1; }
	/* TODO */ virtual String debug_get_stack_level_function(int p_level) const { return ""; }
	/* TODO */ virtual String debug_get_stack_level_source(int p_level) const { return ""; }
	/* TODO */ virtual void debug_get_stack_level_locals(int p_level, List<String> *p_locals, List<Variant> *p_values, int p_max_subitems, int p_max_depth) {}
	/* TODO */ virtual void debug_get_stack_level_members(int p_level, List<String> *p_members, List<Variant> *p_values, int p_max_subitems, int p_max_depth) {}
	/* TODO */ virtual void debug_get_globals(List<String> *p_locals, List<Variant> *p_values, int p_max_subitems, int p_max_depth) {}
	/* TODO */ virtual String debug_parse_stack_level_expression(int p_level, const String &p_expression, int p_max_subitems, int p_max_depth) { return ""; }
	/* TODO */ virtual Vector<StackInfo> debug_get_current_stack_info() { return Vector<StackInfo>(); }

	/* PROFILING FUNCTIONS */
	/* TODO */ virtual void profiling_start() {}
	/* TODO */ virtual void profiling_stop() {}
	/* TODO */ virtual int profiling_get_accumulated_data(ProfilingInfo *p_info_arr, int p_info_max) { return 0; }
	/* TODO */ virtual int profiling_get_frame_data(ProfilingInfo *p_info_arr, int p_info_max) { return 0; }

	/* TODO? */ // virtual void frame();

	/* TODO? */ virtual void get_public_functions(List<MethodInfo> *p_functions) const {}
	/* TODO? */ virtual void get_public_constants(List<Pair<String, Variant> > *p_constants) const {}

	/* TODO */ void reload_all_scripts() {}
	/* TODO */ void reload_tool_script(const Ref<Script> &p_script, bool p_soft_reload) {}

	/* LOADER FUNCTIONS */
	virtual void get_recognized_extensions(List<String> *p_extensions) const;

	/* THREAD ATTACHING */
	void thread_enter();
	void thread_exit();

	CSharpLanguage();
	~CSharpLanguage();
};


class ResourceFormatLoaderCSharpScript : public ResourceFormatLoader {
public:

	virtual RES load(const String &p_path,const String& p_original_path="",Error *r_error=NULL);
	virtual void get_recognized_extensions(List<String> *p_extensions) const;
	virtual bool handles_type(const String& p_type) const;
	virtual String get_resource_type(const String &p_path) const;

};

class ResourceFormatSaverCSharpScript : public ResourceFormatSaver {
public:

	virtual Error save(const String &p_path,const RES& p_resource,uint32_t p_flags=0);
	virtual void get_recognized_extensions(const RES& p_resource,List<String> *p_extensions) const;
	virtual bool recognize(const RES& p_resource) const;

};

#endif // CSHARP_SCRIPT_H
