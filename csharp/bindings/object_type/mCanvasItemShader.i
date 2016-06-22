/* mCanvasItemShader.i */
%module mCanvasItemShader

%typemap(ctype, out="CanvasItemShader*") Ref<CanvasItemShader> "CanvasItemShader*"
%typemap(out, null="NULL") Ref<CanvasItemShader> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<CanvasItemShader> "CanvasItemShader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CanvasItemShader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CanvasItemShader> "CanvasItemShader"
%typemap(csout, excode=SWIGEXCODE) Ref<CanvasItemShader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CanvasItemShader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CanvasItemShader;$excode
    return ret;
}

template<class CanvasItemShader> class Ref;%template() Ref<CanvasItemShader>;
%feature("novaluewrapper") Ref<CanvasItemShader>;


%typemap(csbody_derived) CanvasItemShader %{

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

%typemap(cscode) CanvasItemShader %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CanvasItemShader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CanvasItemShader;

class CanvasItemShader : public Shader {
public:
  CanvasItemShader();
  %extend {
    ~CanvasItemShader() {
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
