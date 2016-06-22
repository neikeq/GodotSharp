/* mEditorScenePostImport.i */
%module mEditorScenePostImport

%typemap(ctype, out="EditorScenePostImport*") Ref<EditorScenePostImport> "EditorScenePostImport*"
%typemap(out, null="NULL") Ref<EditorScenePostImport> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EditorScenePostImport> "EditorScenePostImport.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorScenePostImport> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorScenePostImport> "EditorScenePostImport"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorScenePostImport> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorScenePostImport ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorScenePostImport;$excode
    return ret;
}

template<class EditorScenePostImport> class Ref;%template() Ref<EditorScenePostImport>;
%feature("novaluewrapper") Ref<EditorScenePostImport>;


%typemap(csbody_derived) EditorScenePostImport %{

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

%typemap(cscode) EditorScenePostImport %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorScenePostImport %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorScenePostImport;

class EditorScenePostImport : public Reference {
public:
  %extend {
    void post_import(Object* scene) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("post_import", scene);
    }
  }
  EditorScenePostImport();
  %extend {
    ~EditorScenePostImport() {
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
