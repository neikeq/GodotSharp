/* mRenderTargetTexture.i */
%module mRenderTargetTexture

%nodefaultctor RenderTargetTexture;
%typemap(ctype, out="RenderTargetTexture*") Ref<RenderTargetTexture> "RenderTargetTexture*"
%typemap(out, null="NULL") Ref<RenderTargetTexture> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<RenderTargetTexture> "RenderTargetTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RenderTargetTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RenderTargetTexture> "RenderTargetTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<RenderTargetTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RenderTargetTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RenderTargetTexture;$excode
    return ret;
}

template<class RenderTargetTexture> class Ref;%template() Ref<RenderTargetTexture>;
%feature("novaluewrapper") Ref<RenderTargetTexture>;


%typemap(csbody_derived) RenderTargetTexture %{

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

%typemap(cscode) RenderTargetTexture %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) RenderTargetTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RenderTargetTexture;

class RenderTargetTexture : public Texture {
public:
  %extend {
    ~RenderTargetTexture() {
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
