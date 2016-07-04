/* mAnimationTreePlayer.i */
%module mAnimationTreePlayer


%typemap(csbody_derived) AnimationTreePlayer %{
  public static readonly int NODE_OUTPUT = 0;
  public static readonly int NODE_ANIMATION = 1;
  public static readonly int NODE_ONESHOT = 2;
  public static readonly int NODE_MIX = 3;
  public static readonly int NODE_BLEND2 = 4;
  public static readonly int NODE_BLEND3 = 5;
  public static readonly int NODE_BLEND4 = 6;
  public static readonly int NODE_TIMESCALE = 7;
  public static readonly int NODE_TIMESEEK = 8;
  public static readonly int NODE_TRANSITION = 9;

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

%typemap(cscode) AnimationTreePlayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AnimationTreePlayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AnimationTreePlayer;

class AnimationTreePlayer : public Node {
public:
  AnimationTreePlayer();

%extend {

void add_node(int type, const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "add_node");
  const void* __args[2] = { &type, &id };
  __method_bind->ptrcall($self, __args, NULL);
}

bool node_exists(const String& node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_exists");
  const void* __args[1] = { &node };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int node_rename(const String& node, const String& new_name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_rename");
  const void* __args[2] = { &node, &new_name };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int node_get_type(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_get_type");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int node_get_input_count(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_get_input_count");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String node_get_input_source(const String& id, int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_get_input_source");
  const void* __args[2] = { &id, &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void animation_node_set_animation(const String& id, Animation* animation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "animation_node_set_animation");
  const void* __args[2] = { &id, animation };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Animation> animation_node_get_animation(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "animation_node_get_animation");
  const void* __args[1] = { &id };
  Ref<Animation> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void animation_node_set_master_animation(const String& id, const String& source) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "animation_node_set_master_animation");
  const void* __args[2] = { &id, &source };
  __method_bind->ptrcall($self, __args, NULL);
}

String animation_node_get_master_animation(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "animation_node_get_master_animation");
  const void* __args[1] = { &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void animation_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "animation_node_set_filter_path");
  const void* __args[3] = { &id, &path, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void oneshot_node_set_fadein_time(const String& id, float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_fadein_time");
  const void* __args[2] = { &id, &time_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float oneshot_node_get_fadein_time(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_get_fadein_time");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void oneshot_node_set_fadeout_time(const String& id, float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_fadeout_time");
  const void* __args[2] = { &id, &time_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float oneshot_node_get_fadeout_time(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_get_fadeout_time");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void oneshot_node_set_autorestart(const String& id, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_autorestart");
  const void* __args[2] = { &id, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void oneshot_node_set_autorestart_delay(const String& id, float delay_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_autorestart_delay");
  const void* __args[2] = { &id, &delay_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

void oneshot_node_set_autorestart_random_delay(const String& id, float rand_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_autorestart_random_delay");
  const void* __args[2] = { &id, &rand_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

bool oneshot_node_has_autorestart(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_has_autorestart");
  const void* __args[1] = { &id };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float oneshot_node_get_autorestart_delay(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_get_autorestart_delay");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float oneshot_node_get_autorestart_random_delay(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_get_autorestart_random_delay");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void oneshot_node_start(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_start");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void oneshot_node_stop(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_stop");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

bool oneshot_node_is_active(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_is_active");
  const void* __args[1] = { &id };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void oneshot_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "oneshot_node_set_filter_path");
  const void* __args[3] = { &id, &path, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void mix_node_set_amount(const String& id, float ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "mix_node_set_amount");
  const void* __args[2] = { &id, &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

float mix_node_get_amount(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "mix_node_get_amount");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void blend2_node_set_amount(const String& id, float blend) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend2_node_set_amount");
  const void* __args[2] = { &id, &blend };
  __method_bind->ptrcall($self, __args, NULL);
}

float blend2_node_get_amount(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend2_node_get_amount");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void blend2_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend2_node_set_filter_path");
  const void* __args[3] = { &id, &path, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void blend3_node_set_amount(const String& id, float blend) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend3_node_set_amount");
  const void* __args[2] = { &id, &blend };
  __method_bind->ptrcall($self, __args, NULL);
}

float blend3_node_get_amount(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend3_node_get_amount");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void blend4_node_set_amount(const String& id, const Vector2& blend) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend4_node_set_amount");
  const void* __args[2] = { &id, &blend };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 blend4_node_get_amount(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "blend4_node_get_amount");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void timescale_node_set_scale(const String& id, float scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "timescale_node_set_scale");
  const void* __args[2] = { &id, &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

float timescale_node_get_scale(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "timescale_node_get_scale");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void timeseek_node_seek(const String& id, float pos_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "timeseek_node_seek");
  const void* __args[2] = { &id, &pos_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

void transition_node_set_input_count(const String& id, int count) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_set_input_count");
  const void* __args[2] = { &id, &count };
  __method_bind->ptrcall($self, __args, NULL);
}

int transition_node_get_input_count(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_get_input_count");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void transition_node_delete_input(const String& id, int input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_delete_input");
  const void* __args[2] = { &id, &input_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void transition_node_set_input_auto_advance(const String& id, int input_idx, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_set_input_auto_advance");
  const void* __args[3] = { &id, &input_idx, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool transition_node_has_input_auto_advance(const String& id, int input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_has_input_auto_advance");
  const void* __args[2] = { &id, &input_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void transition_node_set_xfade_time(const String& id, float time_sec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_set_xfade_time");
  const void* __args[2] = { &id, &time_sec };
  __method_bind->ptrcall($self, __args, NULL);
}

float transition_node_get_xfade_time(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_get_xfade_time");
  const void* __args[1] = { &id };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void transition_node_set_current(const String& id, int input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_set_current");
  const void* __args[2] = { &id, &input_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int transition_node_get_current(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "transition_node_get_current");
  const void* __args[1] = { &id };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void node_set_pos(const String& id, const Vector2& screen_pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_set_pos");
  const void* __args[2] = { &id, &screen_pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 node_get_pos(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "node_get_pos");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_node(const String& id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "remove_node");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

int connect(const String& id, const String& dst_id, int dst_input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "connect");
  const void* __args[3] = { &id, &dst_id, &dst_input_idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_connected(const String& id, const String& dst_id, int dst_input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "is_connected");
  const void* __args[3] = { &id, &dst_id, &dst_input_idx };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void disconnect(const String& id, int dst_input_idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "disconnect");
  const void* __args[2] = { &id, &dst_input_idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_active(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "set_active");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_base_path(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "set_base_path");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_base_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "get_base_path");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_master_player(const NodePath& nodepath) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "set_master_player");
  const void* __args[1] = { &nodepath };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_master_player() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "get_master_player");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

StringArray get_node_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "get_node_list");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_animation_process_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "set_animation_process_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_animation_process_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "get_animation_process_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void advance(float delta) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "advance");
  const void* __args[1] = { &delta };
  __method_bind->ptrcall($self, __args, NULL);
}

void reset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "reset");
  __method_bind->ptrcall($self, NULL, NULL);
}

void recompute_caches() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AnimationTreePlayer", "recompute_caches");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
