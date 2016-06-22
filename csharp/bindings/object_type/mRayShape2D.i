/* mRayShape2D.i */
%module mRayShape2D

%typemap(ctype, out="RayShape2D*") Ref<RayShape2D> "RayShape2D*"
%typemap(out, null="NULL") Ref<RayShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<RayShape2D> "RayShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RayShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RayShape2D> "RayShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<RayShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RayShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RayShape2D;$excode
    return ret;
}

template<class RayShape2D> class Ref;%template() Ref<RayShape2D>;
%feature("novaluewrapper") Ref<RayShape2D>;


%typemap(csbody_derived) RayShape2D %{

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

%typemap(cscode) RayShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RayShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RayShape2D;

class RayShape2D : public Shape2D {
public:
  %extend {
    void set_length(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_length", length);
    }
  }
  %extend {
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  RayShape2D();
  %extend {
    ~RayShape2D() {
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
