/* mSpatial.i */
%module mSpatial


%typemap(csbody_derived) Spatial %{
  public static readonly int NOTIFICATION_TRANSFORM_CHANGED = 29;
  public static readonly int NOTIFICATION_ENTER_WORLD = 41;
  public static readonly int NOTIFICATION_EXIT_WORLD = 42;
  public static readonly int NOTIFICATION_VISIBILITY_CHANGED = 43;

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

%typemap(cscode) Spatial %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Spatial %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Spatial;

class Spatial : public Node {
public:
  %extend {
    void set_transform(const Transform& local) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", local);
    }
  }
  %extend {
    Transform get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
    }
  }
  %extend {
    void set_translation(const Vector3& translation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_translation", translation);
    }
  }
  %extend {
    Vector3 get_translation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_translation");
    }
  }
  %extend {
    void set_rotation(const Vector3& rotation_rad) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation", rotation_rad);
    }
  }
  %extend {
    Vector3 get_rotation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation");
    }
  }
  %extend {
    void set_rotation_deg(const Vector3& rotation_deg) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation_deg", rotation_deg);
    }
  }
  %extend {
    Vector3 get_rotation_deg() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation_deg");
    }
  }
  %extend {
    void set_scale(const Vector3& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scale", scale);
    }
  }
  %extend {
    Vector3 get_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scale");
    }
  }
  %extend {
    void set_global_transform(const Transform& global) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_global_transform", global);
    }
  }
  %extend {
    Transform get_global_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_transform");
    }
  }
  %extend {
    Object* get_parent_spatial() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_parent_spatial").operator Object *();
    }
  }
  %extend {
    void set_ignore_transform_notification(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ignore_transform_notification", enabled);
    }
  }
  %extend {
    void set_as_toplevel(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_as_toplevel", enable);
    }
  }
  %extend {
    bool is_set_as_toplevel() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_set_as_toplevel");
    }
  }
  %extend {
    Ref<World> get_world() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_world").operator Object *()->cast_to<World>();
    }
  }
  %extend {
    void update_gizmo() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("update_gizmo");
    }
  }
  %extend {
    void set_gizmo(Ref<SpatialGizmo> gizmo) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gizmo", gizmo);
    }
  }
  %extend {
    Ref<SpatialGizmo> get_gizmo() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gizmo").operator Object *()->cast_to<SpatialGizmo>();
    }
  }
  %extend {
    void show() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("show");
    }
  }
  %extend {
    void hide() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("hide");
    }
  }
  %extend {
    bool is_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_visible");
    }
  }
  %extend {
    bool is_hidden() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_hidden");
    }
  }
  %extend {
    void set_hidden(bool hidden) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hidden", hidden);
    }
  }
  %extend {
    void set_notify_local_transform(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_notify_local_transform", enable);
    }
  }
  %extend {
    bool is_local_transform_notification_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_local_transform_notification_enabled");
    }
  }
  %extend {
    void rotate(const Vector3& normal, float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rotate", normal, radians);
    }
  }
  %extend {
    void global_rotate(const Vector3& normal, float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("global_rotate", normal, radians);
    }
  }
  %extend {
    void rotate_x(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rotate_x", radians);
    }
  }
  %extend {
    void rotate_y(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rotate_y", radians);
    }
  }
  %extend {
    void rotate_z(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rotate_z", radians);
    }
  }
  %extend {
    void translate(const Vector3& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("translate", offset);
    }
  }
  %extend {
    void global_translate(const Vector3& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("global_translate", offset);
    }
  }
  %extend {
    void orthonormalize() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("orthonormalize");
    }
  }
  %extend {
    void set_identity() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_identity");
    }
  }
  %extend {
    void look_at(const Vector3& target, const Vector3& up) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("look_at", target, up);
    }
  }
  %extend {
    void look_at_from_pos(const Vector3& pos, const Vector3& target, const Vector3& up) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("look_at_from_pos", pos, target, up);
    }
  }
  Spatial();

};
