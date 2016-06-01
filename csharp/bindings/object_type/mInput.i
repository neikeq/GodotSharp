/* mInput.i */
%module mInput

%csmethodmodifiers Input::Input "private"
%csmethodmodifiers Input::SingletonGetInstance "private"
%nodefaultctor Input;

%typemap(csbody_derived) Input %{
  private static $csclassname instance;
  public static readonly int MOUSE_MODE_VISIBLE = 0;
  public static readonly int MOUSE_MODE_HIDDEN = 1;
  public static readonly int MOUSE_MODE_CAPTURED = 2;

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

%typemap(cscode) Input %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Input %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Input;

class Input : public Object {
public:
  %extend {
    bool is_key_pressed(int scancode) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_key_pressed", scancode);
    }
  }
  %extend {
    bool is_mouse_button_pressed(int button) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_mouse_button_pressed", button);
    }
  }
  %extend {
    bool is_joy_button_pressed(int device, int button) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_joy_button_pressed", device, button);
    }
  }
  %extend {
    bool is_action_pressed(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_action_pressed", action);
    }
  }
  %extend {
    void add_joy_mapping(const String& mapping, bool update_existing = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_joy_mapping", mapping, update_existing);
    }
  }
  %extend {
    void remove_joy_mapping(const String& guid) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_joy_mapping", guid);
    }
  }
  %extend {
    bool is_joy_known(int device) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_joy_known", device);
    }
  }
  %extend {
    float get_joy_axis(int device, int axis) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_joy_axis", device, axis);
    }
  }
  %extend {
    String get_joy_name(int device) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_joy_name", device);
    }
  }
  %extend {
    String get_joy_guid(int device) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_joy_guid", device);
    }
  }
  %extend {
    Vector3 get_accelerometer() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_accelerometer");
    }
  }
  %extend {
    Vector3 get_magnetometer() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_magnetometer");
    }
  }
  %extend {
    Vector2 get_mouse_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mouse_speed");
    }
  }
  %extend {
    int get_mouse_button_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mouse_button_mask");
    }
  }
  %extend {
    void set_mouse_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mouse_mode", mode);
    }
  }
  %extend {
    int get_mouse_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mouse_mode");
    }
  }
  %extend {
    void warp_mouse_pos(const Vector2& to) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("warp_mouse_pos", to);
    }
  }
  %extend {
    void action_press(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("action_press", action);
    }
  }
  %extend {
    void action_release(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("action_release", action);
    }
  }
  %extend {
    void set_custom_mouse_cursor(Ref<Texture> image, const Vector2& hotspot = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_mouse_cursor", image, hotspot);
    }
  }
  %extend {
    static Input* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Input")->cast_to<Input>(); }
  }

};
