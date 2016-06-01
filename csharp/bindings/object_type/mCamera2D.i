/* mCamera2D.i */
%module mCamera2D


%typemap(csbody_derived) Camera2D %{
  public static readonly int ANCHOR_MODE_DRAG_CENTER = 1;
  public static readonly int ANCHOR_MODE_FIXED_TOP_LEFT = 0;

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

%typemap(cscode) Camera2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Camera2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Camera2D;

class Camera2D : public Node2D {
public:
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void set_anchor_mode(int anchor_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_anchor_mode", anchor_mode);
    }
  }
  %extend {
    int get_anchor_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_anchor_mode");
    }
  }
  %extend {
    void set_rotating(bool rotating) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotating", rotating);
    }
  }
  %extend {
    bool is_rotating() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_rotating");
    }
  }
  %extend {
    void make_current() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("make_current");
    }
  }
  %extend {
    void clear_current() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_current");
    }
  }
  %extend {
    bool is_current() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_current");
    }
  }
  %extend {
    void set_limit(int margin, int limit) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_limit", margin, limit);
    }
  }
  %extend {
    int get_limit(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_limit", margin);
    }
  }
  %extend {
    void set_v_drag_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_drag_enabled", enabled);
    }
  }
  %extend {
    bool is_v_drag_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_v_drag_enabled");
    }
  }
  %extend {
    void set_h_drag_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_drag_enabled", enabled);
    }
  }
  %extend {
    bool is_h_drag_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_h_drag_enabled");
    }
  }
  %extend {
    void set_v_offset(float ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_offset", ofs);
    }
  }
  %extend {
    float get_v_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_offset");
    }
  }
  %extend {
    void set_h_offset(float ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_offset", ofs);
    }
  }
  %extend {
    float get_h_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_h_offset");
    }
  }
  %extend {
    void set_drag_margin(int margin, float drag_margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_drag_margin", margin, drag_margin);
    }
  }
  %extend {
    float get_drag_margin(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_drag_margin", margin);
    }
  }
  %extend {
    Vector2 get_camera_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_camera_pos");
    }
  }
  %extend {
    Vector2 get_camera_screen_center() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_camera_screen_center");
    }
  }
  %extend {
    void set_zoom(const Vector2& zoom) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_zoom", zoom);
    }
  }
  %extend {
    Vector2 get_zoom() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_zoom");
    }
  }
  %extend {
    void set_follow_smoothing(float follow_smoothing) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_follow_smoothing", follow_smoothing);
    }
  }
  %extend {
    float get_follow_smoothing() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_follow_smoothing");
    }
  }
  %extend {
    void set_enable_follow_smoothing(bool follow_smoothing) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enable_follow_smoothing", follow_smoothing);
    }
  }
  %extend {
    bool is_follow_smoothing_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_follow_smoothing_enabled");
    }
  }
  %extend {
    void force_update_scroll() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("force_update_scroll");
    }
  }
  Camera2D();

};
