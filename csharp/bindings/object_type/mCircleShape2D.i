/* mCircleShape2D.i */
%module mCircleShape2D


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

};
