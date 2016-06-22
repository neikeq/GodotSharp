/* mRayShape.i */
%module mRayShape

%typemap(ctype, out="RayShape*") Ref<RayShape> "RayShape*"
%typemap(out, null="NULL") Ref<RayShape> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<RayShape> "RayShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RayShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RayShape> "RayShape"
%typemap(csout, excode=SWIGEXCODE) Ref<RayShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RayShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RayShape;$excode
    return ret;
}

template<class RayShape> class Ref;%template() Ref<RayShape>;
%feature("novaluewrapper") Ref<RayShape>;


%typemap(csbody_derived) RayShape %{

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

%typemap(cscode) RayShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RayShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RayShape;

class RayShape : public Shape {
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
  RayShape();
  %extend {
    ~RayShape() {
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
