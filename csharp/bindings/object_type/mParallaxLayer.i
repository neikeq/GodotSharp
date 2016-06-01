/* mParallaxLayer.i */
%module mParallaxLayer


%typemap(csbody_derived) ParallaxLayer %{

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

%typemap(cscode) ParallaxLayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParallaxLayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ParallaxLayer;

class ParallaxLayer : public Node2D {
public:
  %extend {
    void set_motion_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_motion_scale", scale);
    }
  }
  %extend {
    Vector2 get_motion_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_motion_scale");
    }
  }
  %extend {
    void set_mirroring(const Vector2& mirror) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mirroring", mirror);
    }
  }
  %extend {
    Vector2 get_mirroring() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mirroring");
    }
  }
  ParallaxLayer();

};
