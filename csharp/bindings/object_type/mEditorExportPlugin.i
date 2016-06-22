/* mEditorExportPlugin.i */
%module mEditorExportPlugin

%typemap(ctype, out="EditorExportPlugin*") Ref<EditorExportPlugin> "EditorExportPlugin*"
%typemap(out, null="NULL") Ref<EditorExportPlugin> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EditorExportPlugin> "EditorExportPlugin.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorExportPlugin> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorExportPlugin> "EditorExportPlugin"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorExportPlugin> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorExportPlugin ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorExportPlugin;$excode
    return ret;
}

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
  %extend {
    Variant custom_export(const String& name, EditorExportPlatform* platform) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("custom_export", name, platform);
    }
  }
  EditorExportPlugin();
  %extend {
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
