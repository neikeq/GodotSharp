/* mCircleShape2D.i */
%module mCircleShape2D

%typemap(ctype, out="CircleShape2D*") Ref<CircleShape2D> "CircleShape2D*"
%typemap(out, null="NULL") Ref<CircleShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<CircleShape2D> "CircleShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CircleShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CircleShape2D> "CircleShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<CircleShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CircleShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CircleShape2D;$excode
    return ret;
}

template<class CircleShape2D> class Ref;%template() Ref<CircleShape2D>;
%feature("novaluewrapper") Ref<CircleShape2D>;


%typemap(csbody_derived) CircleShape2D %{

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

%typemap(cscode) CircleShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CircleShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CircleShape2D;

class CircleShape2D : public Shape2D {
public:
  %extend {
    void set_radius(float radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radius", radius);
    }
  }
  %extend {
    float get_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radius");
    }
  }
  CircleShape2D();
  %extend {
    ~CircleShape2D() {
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
