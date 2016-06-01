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
  %extend {
    void add_node(int type, const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_node", type, id);
    }
  }
  %extend {
    bool node_exists(const String& node) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_exists", node);
    }
  }
  %extend {
    int node_rename(const String& node, const String& new_name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_rename", node, new_name);
    }
  }
  %extend {
    int node_get_type(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_type", id);
    }
  }
  %extend {
    int node_get_input_count(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_input_count", id);
    }
  }
  %extend {
    String node_get_input_source(const String& id, int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_input_source", id, idx);
    }
  }
  %extend {
    void animation_node_set_animation(const String& id, Ref<Animation> animation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("animation_node_set_animation", id, animation);
    }
  }
  %extend {
    Ref<Animation> animation_node_get_animation(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("animation_node_get_animation", id).operator Object *()->cast_to<Animation>();
    }
  }
  %extend {
    void animation_node_set_master_animation(const String& id, const String& source) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("animation_node_set_master_animation", id, source);
    }
  }
  %extend {
    String animation_node_get_master_animation(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("animation_node_get_master_animation", id);
    }
  }
  %extend {
    void animation_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("animation_node_set_filter_path", id, path, enable);
    }
  }
  %extend {
    void oneshot_node_set_fadein_time(const String& id, float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_fadein_time", id, time_sec);
    }
  }
  %extend {
    float oneshot_node_get_fadein_time(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_get_fadein_time", id);
    }
  }
  %extend {
    void oneshot_node_set_fadeout_time(const String& id, float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_fadeout_time", id, time_sec);
    }
  }
  %extend {
    float oneshot_node_get_fadeout_time(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_get_fadeout_time", id);
    }
  }
  %extend {
    void oneshot_node_set_autorestart(const String& id, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_autorestart", id, enable);
    }
  }
  %extend {
    void oneshot_node_set_autorestart_delay(const String& id, float delay_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_autorestart_delay", id, delay_sec);
    }
  }
  %extend {
    void oneshot_node_set_autorestart_random_delay(const String& id, float rand_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_autorestart_random_delay", id, rand_sec);
    }
  }
  %extend {
    bool oneshot_node_has_autorestart(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_has_autorestart", id);
    }
  }
  %extend {
    float oneshot_node_get_autorestart_delay(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_get_autorestart_delay", id);
    }
  }
  %extend {
    float oneshot_node_get_autorestart_random_delay(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_get_autorestart_random_delay", id);
    }
  }
  %extend {
    void oneshot_node_start(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_start", id);
    }
  }
  %extend {
    void oneshot_node_stop(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_stop", id);
    }
  }
  %extend {
    bool oneshot_node_is_active(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("oneshot_node_is_active", id);
    }
  }
  %extend {
    void oneshot_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("oneshot_node_set_filter_path", id, path, enable);
    }
  }
  %extend {
    void mix_node_set_amount(const String& id, float ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("mix_node_set_amount", id, ratio);
    }
  }
  %extend {
    float mix_node_get_amount(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("mix_node_get_amount", id);
    }
  }
  %extend {
    void blend2_node_set_amount(const String& id, float blend) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("blend2_node_set_amount", id, blend);
    }
  }
  %extend {
    float blend2_node_get_amount(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("blend2_node_get_amount", id);
    }
  }
  %extend {
    void blend2_node_set_filter_path(const String& id, const NodePath& path, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("blend2_node_set_filter_path", id, path, enable);
    }
  }
  %extend {
    void blend3_node_set_amount(const String& id, float blend) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("blend3_node_set_amount", id, blend);
    }
  }
  %extend {
    float blend3_node_get_amount(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("blend3_node_get_amount", id);
    }
  }
  %extend {
    void blend4_node_set_amount(const String& id, const Vector2& blend) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("blend4_node_set_amount", id, blend);
    }
  }
  %extend {
    Vector2 blend4_node_get_amount(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("blend4_node_get_amount", id);
    }
  }
  %extend {
    void timescale_node_set_scale(const String& id, float scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("timescale_node_set_scale", id, scale);
    }
  }
  %extend {
    float timescale_node_get_scale(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("timescale_node_get_scale", id);
    }
  }
  %extend {
    void timeseek_node_seek(const String& id, float pos_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("timeseek_node_seek", id, pos_sec);
    }
  }
  %extend {
    void transition_node_set_input_count(const String& id, int count) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("transition_node_set_input_count", id, count);
    }
  }
  %extend {
    int transition_node_get_input_count(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transition_node_get_input_count", id);
    }
  }
  %extend {
    void transition_node_delete_input(const String& id, int input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("transition_node_delete_input", id, input_idx);
    }
  }
  %extend {
    void transition_node_set_input_auto_advance(const String& id, int input_idx, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("transition_node_set_input_auto_advance", id, input_idx, enable);
    }
  }
  %extend {
    bool transition_node_has_input_auto_advance(const String& id, int input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transition_node_has_input_auto_advance", id, input_idx);
    }
  }
  %extend {
    void transition_node_set_xfade_time(const String& id, float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("transition_node_set_xfade_time", id, time_sec);
    }
  }
  %extend {
    float transition_node_get_xfade_time(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transition_node_get_xfade_time", id);
    }
  }
  %extend {
    void transition_node_set_current(const String& id, int input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("transition_node_set_current", id, input_idx);
    }
  }
  %extend {
    int transition_node_get_current(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("transition_node_get_current", id);
    }
  }
  %extend {
    void node_set_pos(const String& id, const Vector2& screen_pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("node_set_pos", id, screen_pos);
    }
  }
  %extend {
    Vector2 node_get_pos(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("node_get_pos", id);
    }
  }
  %extend {
    void remove_node(const String& id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_node", id);
    }
  }
  %extend {
    int connect(const String& id, const String& dst_id, int dst_input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect", id, dst_id, dst_input_idx);
    }
  }
  %extend {
    bool is_connected(const String& id, const String& dst_id, int dst_input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_connected", id, dst_id, dst_input_idx);
    }
  }
  %extend {
    void disconnect(const String& id, int dst_input_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect", id, dst_input_idx);
    }
  }
  %extend {
    void set_active(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_active", enabled);
    }
  }
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    void set_base_path(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_base_path", path);
    }
  }
  %extend {
    NodePath get_base_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_base_path");
    }
  }
  %extend {
    void set_master_player(const NodePath& nodepath) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_master_player", nodepath);
    }
  }
  %extend {
    NodePath get_master_player() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_master_player");
    }
  }
  %extend {
    StringArray get_node_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_list");
    }
  }
  %extend {
    void set_animation_process_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_animation_process_mode", mode);
    }
  }
  %extend {
    int get_animation_process_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_animation_process_mode");
    }
  }
  %extend {
    void advance(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("advance", delta);
    }
  }
  %extend {
    void reset() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("reset");
    }
  }
  %extend {
    void recompute_caches() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("recompute_caches");
    }
  }
  AnimationTreePlayer();

};
