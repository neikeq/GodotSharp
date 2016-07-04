/* mEditorImportPlugin.i */
%module mEditorImportPlugin

template<class EditorImportPlugin> class Ref;%template() Ref<EditorImportPlugin>;
%feature("novaluewrapper") Ref<EditorImportPlugin>;


%typemap(csbody_derived) EditorImportPlugin %{

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

%typemap(cscode) EditorImportPlugin %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorImportPlugin %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorImportPlugin;

class EditorImportPlugin : public Reference {
public:
  EditorImportPlugin();

%extend {

bool can_reimport_multiple_files() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "can_reimport_multiple_files");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RawArray custom_export(const String& path, EditorExportPlatform* platform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "custom_export");
  const void* __args[2] = { &path, platform };
  RawArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "get_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_visible_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "get_visible_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int import(const String& path, ResourceImportMetadata* from) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "import");
  const void* __args[2] = { &path, from };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void import_dialog(const String& from) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "import_dialog");
  const void* __args[1] = { &from };
  __method_bind->ptrcall($self, __args, NULL);
}

void import_from_drop(const StringArray& files, const String& dest_path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "import_from_drop");
  const void* __args[2] = { &files, &dest_path };
  __method_bind->ptrcall($self, __args, NULL);
}

void reimport_multiple_files(const StringArray& files) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "reimport_multiple_files");
  const void* __args[1] = { &files };
  __method_bind->ptrcall($self, __args, NULL);
}

String validate_source_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "validate_source_path");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String expand_source_path(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorImportPlugin", "expand_source_path");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~EditorImportPlugin() {
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
