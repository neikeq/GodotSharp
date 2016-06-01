/* mAnimation.i */
%module mAnimation


%typemap(csbody_derived) Animation %{
  public static readonly int TYPE_VALUE = 0;
  public static readonly int TYPE_TRANSFORM = 1;
  public static readonly int TYPE_METHOD = 2;
  public static readonly int INTERPOLATION_NEAREST = 0;
  public static readonly int INTERPOLATION_LINEAR = 1;
  public static readonly int INTERPOLATION_CUBIC = 2;

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

%typemap(cscode) Animation %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Animation %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Animation;

class Animation : public Resource {
public:
  %extend {
    int add_track(int type, int at_pos = -1) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_track", type, at_pos);
    }
  }
  %extend {
    void remove_track(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_track", idx);
    }
  }
  %extend {
    int get_track_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_track_count");
    }
  }
  %extend {
    int track_get_type(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_type", idx);
    }
  }
  %extend {
    NodePath track_get_path(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_path", idx);
    }
  }
  %extend {
    void track_set_path(int idx, const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_set_path", idx, path);
    }
  }
  %extend {
    int find_track(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_track", path);
    }
  }
  %extend {
    void track_move_up(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_move_up", idx);
    }
  }
  %extend {
    void track_move_down(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_move_down", idx);
    }
  }
  %extend {
    int transform_track_insert_key(int idx, float time, const Vector3& loc, const Quat& rot, const Vector3& scale) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transform_track_insert_key", idx, time, loc, rot, scale);
    }
  }
  %extend {
    void track_insert_key(int idx, float time, const Variant& key, float transition = 1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_insert_key", idx, time, key, transition);
    }
  }
  %extend {
    void track_remove_key(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_remove_key", idx, key_idx);
    }
  }
  %extend {
    void track_remove_key_at_pos(int idx, float pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_remove_key_at_pos", idx, pos);
    }
  }
  %extend {
    void track_set_key_value(int idx, int key, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_set_key_value", idx, key, value);
    }
  }
  %extend {
    void track_set_key_transition(int idx, int key_idx, float transition) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_set_key_transition", idx, key_idx, transition);
    }
  }
  %extend {
    float track_get_key_transition(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_key_transition", idx, key_idx);
    }
  }
  %extend {
    int track_get_key_count(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_key_count", idx);
    }
  }
  %extend {
    void track_get_key_value(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_get_key_value", idx, key_idx);
    }
  }
  %extend {
    float track_get_key_time(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_key_time", idx, key_idx);
    }
  }
  %extend {
    int track_find_key(int idx, float time, bool exact = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_find_key", idx, time, exact);
    }
  }
  %extend {
    void track_set_interpolation_type(int idx, int interpolation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("track_set_interpolation_type", idx, interpolation);
    }
  }
  %extend {
    int track_get_interpolation_type(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("track_get_interpolation_type", idx);
    }
  }
  %extend {
    Array transform_track_interpolate(int idx, float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transform_track_interpolate", idx, time_sec);
    }
  }
  %extend {
    void value_track_set_continuous(int idx, bool continuous) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("value_track_set_continuous", idx, continuous);
    }
  }
  %extend {
    bool value_track_is_continuous(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("value_track_is_continuous", idx);
    }
  }
  %extend {
    IntArray value_track_get_key_indices(int idx, float time_sec, float delta) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("value_track_get_key_indices", idx, time_sec, delta);
    }
  }
  %extend {
    IntArray method_track_get_key_indices(int idx, float time_sec, float delta) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("method_track_get_key_indices", idx, time_sec, delta);
    }
  }
  %extend {
    String method_track_get_name(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("method_track_get_name", idx, key_idx);
    }
  }
  %extend {
    Array method_track_get_params(int idx, int key_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("method_track_get_params", idx, key_idx);
    }
  }
  %extend {
    void set_length(float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_length", time_sec);
    }
  }
  %extend {
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  %extend {
    void set_loop(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop", enabled);
    }
  }
  %extend {
    bool has_loop() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_loop");
    }
  }
  %extend {
    void set_step(float size_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_step", size_sec);
    }
  }
  %extend {
    float get_step() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_step");
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  Animation();

};
