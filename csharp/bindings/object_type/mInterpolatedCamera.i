/* mInterpolatedCamera.i */
%module mInterpolatedCamera


%typemap(csbody_derived) InterpolatedCamera %{

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

%typemap(cscode) InterpolatedCamera %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) InterpolatedCamera %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor InterpolatedCamera;

class InterpolatedCamera : public Camera {
public:
  %extend {
    void set_target_path(const NodePath& target_path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_target_path", target_path);
    }
  }
  %extend {
    NodePath get_target_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_target_path");
    }
  }
  %extend {
    void set_target(Camera* target) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_target", target);
    }
  }
  %extend {
    void set_speed(float speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_speed", speed);
    }
  }
  %extend {
    float get_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_speed");
    }
  }
  %extend {
    void set_interpolation_enabled(bool target_path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_interpolation_enabled", target_path);
    }
  }
  %extend {
    bool is_interpolation_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_interpolation_enabled");
    }
  }
  InterpolatedCamera();

};
