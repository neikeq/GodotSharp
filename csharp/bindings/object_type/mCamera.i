/* mCamera.i */
%module mCamera

%typemap(out) Camera "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Camera* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Camera %{
  public static readonly int PROJECTION_PERSPECTIVE = 0;
  public static readonly int PROJECTION_ORTHOGONAL = 1;
  public static readonly int KEEP_WIDTH = 0;
  public static readonly int KEEP_HEIGHT = 1;

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

%typemap(cscode) Camera %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Camera %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Camera;

class Camera : public Spatial {
public:
  %extend {
    Vector3 project_ray_normal(const Vector2& screen_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("project_ray_normal", screen_point);
    }
  }
  %extend {
    Vector3 project_local_ray_normal(const Vector2& screen_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("project_local_ray_normal", screen_point);
    }
  }
  %extend {
    Vector3 project_ray_origin(const Vector2& screen_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("project_ray_origin", screen_point);
    }
  }
  %extend {
    Vector2 unproject_position(const Vector3& world_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("unproject_position", world_point);
    }
  }
  %extend {
    bool is_position_behind(const Vector3& world_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_position_behind", world_point);
    }
  }
  %extend {
    Vector3 project_position(const Vector2& screen_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("project_position", screen_point);
    }
  }
  %extend {
    void set_perspective(float fov, float z_near, float z_far) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_perspective", fov, z_near, z_far);
    }
  }
  %extend {
    void set_orthogonal(float size, float z_near, float z_far) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_orthogonal", size, z_near, z_far);
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
    Transform get_camera_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_camera_transform");
    }
  }
  %extend {
    float get_fov() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fov");
    }
  }
  %extend {
    float get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  %extend {
    float get_zfar() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_zfar");
    }
  }
  %extend {
    float get_znear() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_znear");
    }
  }
  %extend {
    int get_projection() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_projection");
    }
  }
  %extend {
    void set_visible_layers(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_visible_layers", mask);
    }
  }
  %extend {
    int get_visible_layers() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visible_layers");
    }
  }
  %extend {
    void set_environment(Ref<Environment> env) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_environment", env);
    }
  }
  %extend {
    Ref<Environment> get_environment() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_environment").operator Object *()->cast_to<Environment>();
    }
  }
  %extend {
    void set_keep_aspect_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_keep_aspect_mode", mode);
    }
  }
  %extend {
    int get_keep_aspect_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_keep_aspect_mode");
    }
  }
  Camera();

};
