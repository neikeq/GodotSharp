/* mEditorSettings.i */
%module mEditorSettings

template<class EditorSettings> class Ref;%template() Ref<EditorSettings>;
%feature("novaluewrapper") Ref<EditorSettings>;


%typemap(csbody_derived) EditorSettings %{

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) : base($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected $csclassname(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init($imclassname.$csclazznameSWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(cscode) EditorSettings %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorSettings %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorSettings;

class EditorSettings : public Resource {
public:
  EditorSettings();

%extend {

void erase(const String& property) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "erase");
  const void* __args[1] = { &property };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_settings_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "get_settings_path");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_project_settings_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "get_project_settings_path");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_favorite_dirs(const StringArray& dirs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "set_favorite_dirs");
  const void* __args[1] = { &dirs };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_favorite_dirs() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "get_favorite_dirs");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_recent_dirs(const StringArray& dirs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "set_recent_dirs");
  const void* __args[1] = { &dirs };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_recent_dirs() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSettings", "get_recent_dirs");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~EditorSettings() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
