/* mPathFollow.i */
%module mPathFollow


%typemap(csbody_derived) PathFollow %{
  public static readonly int ROTATION_NONE = 0;
  public static readonly int ROTATION_Y = 1;
  public static readonly int ROTATION_XY = 2;
  public static readonly int ROTATION_XYZ = 3;

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

%typemap(cscode) PathFollow %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PathFollow %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PathFollow;

class PathFollow : public Spatial {
public:
  %extend {
    void set_offset(float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    float get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void set_h_offset(float h_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_offset", h_offset);
    }
  }
  %extend {
    float get_h_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_h_offset");
    }
  }
  %extend {
    void set_v_offset(float v_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_offset", v_offset);
    }
  }
  %extend {
    float get_v_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_offset");
    }
  }
  %extend {
    void set_unit_offset(float unit_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_unit_offset", unit_offset);
    }
  }
  %extend {
    float get_unit_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unit_offset");
    }
  }
  %extend {
    void set_rotation_mode(int rotation_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation_mode", rotation_mode);
    }
  }
  %extend {
    int get_rotation_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation_mode");
    }
  }
  %extend {
    void set_cubic_interpolation(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cubic_interpolation", enable);
    }
  }
  %extend {
    bool get_cubic_interpolation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cubic_interpolation");
    }
  }
  %extend {
    void set_loop(bool loop) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop", loop);
    }
  }
  %extend {
    bool has_loop() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_loop");
    }
  }
  PathFollow();

};
