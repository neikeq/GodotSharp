/* mPinJoint2D.i */
%module mPinJoint2D


%typemap(csbody_derived) PinJoint2D %{

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

%typemap(cscode) PinJoint2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PinJoint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor PinJoint2D;

class PinJoint2D : public Joint2D {
public:
  %extend {
    void set_softness(float softness) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_softness", softness);
    }
  }
  %extend {
    float get_softness() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_softness");
    }
  }
  PinJoint2D();

};
