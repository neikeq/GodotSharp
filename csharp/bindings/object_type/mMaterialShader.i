/* mMaterialShader.i */
%module mMaterialShader

%typemap(ctype, out="MaterialShader*") Ref<MaterialShader> "MaterialShader*"
%typemap(out, null="NULL") Ref<MaterialShader> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<MaterialShader> "MaterialShader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MaterialShader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MaterialShader> "MaterialShader"
%typemap(csout, excode=SWIGEXCODE) Ref<MaterialShader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MaterialShader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MaterialShader;$excode
    return ret;
}

template<class MaterialShader> class Ref;%template() Ref<MaterialShader>;
%feature("novaluewrapper") Ref<MaterialShader>;


%typemap(csbody_derived) MaterialShader %{

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

%typemap(cscode) MaterialShader %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MaterialShader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MaterialShader;

class MaterialShader : public Shader {
public:
  MaterialShader();
  %extend {
    ~MaterialShader() {
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
