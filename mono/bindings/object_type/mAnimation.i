/* mAnimation.i */
%module mAnimation

template<class Animation> class Ref;%template() Ref<Animation>;
%feature("novaluewrapper") Ref<Animation>;


%typemap(csbody_derived) Animation %{
  public static readonly int TYPE_VALUE = 0;
  public static readonly int TYPE_TRANSFORM = 1;
  public static readonly int TYPE_METHOD = 2;
  public static readonly int INTERPOLATION_NEAREST = 0;
  public static readonly int INTERPOLATION_LINEAR = 1;
  public static readonly int INTERPOLATION_CUBIC = 2;
  public static readonly int UPDATE_CONTINUOUS = 0;
  public static readonly int UPDATE_DISCRETE = 1;
  public static readonly int UPDATE_TRIGGER = 2;

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
  Animation();

%extend {

int add_track(int type, int at_pos = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "add_track");
  const void* __args[2] = { &type, &at_pos };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_track(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "remove_track");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_track_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "get_track_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int track_get_type(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_type");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

NodePath track_get_path(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_path");
  const void* __args[1] = { &idx };
  NodePath ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void track_set_path(int idx, const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_set_path");
  const void* __args[2] = { &idx, &path };
  __method_bind->ptrcall($self, __args, NULL);
}

int find_track(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "find_track");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void track_move_up(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_move_up");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_move_down(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_move_down");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_set_imported(int idx, bool imported) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_set_imported");
  const void* __args[2] = { &idx, &imported };
  __method_bind->ptrcall($self, __args, NULL);
}

bool track_is_imported(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_is_imported");
  const void* __args[1] = { &idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int transform_track_insert_key(int idx, float time, const Vector3& loc, const Quat& rot, const Vector3& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "transform_track_insert_key");
  const void* __args[5] = { &idx, &time, &loc, &rot, &scale };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void track_insert_key(int idx, float time, const Variant& key, float transition = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_insert_key");
  const void* __args[4] = { &idx, &time, &key, &transition };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_remove_key(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_remove_key");
  const void* __args[2] = { &idx, &key_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_remove_key_at_pos(int idx, float pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_remove_key_at_pos");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_set_key_value(int idx, int key, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_set_key_value");
  const void* __args[3] = { &idx, &key, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void track_set_key_transition(int idx, int key_idx, float transition) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_set_key_transition");
  const void* __args[3] = { &idx, &key_idx, &transition };
  __method_bind->ptrcall($self, __args, NULL);
}

float track_get_key_transition(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_key_transition");
  const void* __args[2] = { &idx, &key_idx };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int track_get_key_count(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_key_count");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void track_get_key_value(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_key_value");
  const void* __args[2] = { &idx, &key_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

float track_get_key_time(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_key_time");
  const void* __args[2] = { &idx, &key_idx };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int track_find_key(int idx, float time, bool exact = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_find_key");
  const void* __args[3] = { &idx, &time, &exact };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void track_set_interpolation_type(int idx, int interpolation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_set_interpolation_type");
  const void* __args[2] = { &idx, &interpolation };
  __method_bind->ptrcall($self, __args, NULL);
}

int track_get_interpolation_type(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "track_get_interpolation_type");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array transform_track_interpolate(int idx, float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "transform_track_interpolate");
  const void* __args[2] = { &idx, &time_sec };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void value_track_set_update_mode(int idx, int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "value_track_set_update_mode");
  const void* __args[2] = { &idx, &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int value_track_get_update_mode(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "value_track_get_update_mode");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

IntArray value_track_get_key_indices(int idx, float time_sec, float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "value_track_get_key_indices");
  const void* __args[3] = { &idx, &time_sec, &delta };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

IntArray method_track_get_key_indices(int idx, float time_sec, float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "method_track_get_key_indices");
  const void* __args[3] = { &idx, &time_sec, &delta };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String method_track_get_name(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "method_track_get_name");
  const void* __args[2] = { &idx, &key_idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array method_track_get_params(int idx, int key_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "method_track_get_params");
  const void* __args[2] = { &idx, &key_idx };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_length(float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "set_length");
  const void* __args[1] = { &time_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "get_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "set_loop");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_loop_interpolation(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "set_loop_interpolation");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_loop() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "has_loop");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_loop_interpolation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "has_loop_interpolation");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_step(float size_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "set_step");
  const void* __args[1] = { &size_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_step() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "get_step");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Animation", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

~Animation() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
