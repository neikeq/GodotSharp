/* mEditorExportPlugin.i */
%module mEditorExportPlugin

template<class EditorExportPlugin> class Ref;%template() Ref<EditorExportPlugin>;
%feature("novaluewrapper") Ref<EditorExportPlugin>;


%typemap(csbody_derived) EditorExportPlugin %{

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

%typemap(cscode) EditorExportPlugin %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorExportPlugin %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorExportPlugin;

class EditorExportPlugin : public Reference {
public:
  EditorExportPlugin();

%extend {

Variant custom_export(const String& name, EditorExportPlatform* platform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorExportPlugin", "custom_export");
  const void* __args[2] = { &name, platform };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~EditorExportPlugin() {
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
