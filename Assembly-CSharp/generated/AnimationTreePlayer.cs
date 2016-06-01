/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class AnimationTreePlayer : Node {
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
  
  internal AnimationTreePlayer(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.AnimationTreePlayer_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected AnimationTreePlayer(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.AnimationTreePlayer_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(AnimationTreePlayer obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          throw new global::System.MethodAccessException("C++ destructor does not have public access");
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void add_node(int type, string id) {
    GodotEnginePINVOKE.AnimationTreePlayer_add_node(swigCPtr, type, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public bool node_exists(string node) {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_node_exists(swigCPtr, node);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public int node_rename(string node, string new_name) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_node_rename(swigCPtr, node, new_name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public int node_get_type(string id) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_node_get_type(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public int node_get_input_count(string id) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_node_get_input_count(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public string node_get_input_source(string id, int idx) {
    string ret = GodotEnginePINVOKE.AnimationTreePlayer_node_get_input_source(swigCPtr, id, idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void animation_node_set_animation(string id, SWIGTYPE_p_RefT_Animation_t animation) {
    GodotEnginePINVOKE.AnimationTreePlayer_animation_node_set_animation(swigCPtr, id, SWIGTYPE_p_RefT_Animation_t.getCPtr(animation));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_Animation_t animation_node_get_animation(string id) {
    SWIGTYPE_p_RefT_Animation_t ret = new SWIGTYPE_p_RefT_Animation_t(GodotEnginePINVOKE.AnimationTreePlayer_animation_node_get_animation(swigCPtr, id), true);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void animation_node_set_master_animation(string id, string source) {
    GodotEnginePINVOKE.AnimationTreePlayer_animation_node_set_master_animation(swigCPtr, id, source);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string animation_node_get_master_animation(string id) {
    string ret = GodotEnginePINVOKE.AnimationTreePlayer_animation_node_get_master_animation(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void animation_node_set_filter_path(string id, NodePath path, bool enable) {
    GodotEnginePINVOKE.AnimationTreePlayer_animation_node_set_filter_path(swigCPtr, id, NodePath.getCPtr(path), enable);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void oneshot_node_set_fadein_time(string id, float time_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_fadein_time(swigCPtr, id, time_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float oneshot_node_get_fadein_time(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_get_fadein_time(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void oneshot_node_set_fadeout_time(string id, float time_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_fadeout_time(swigCPtr, id, time_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float oneshot_node_get_fadeout_time(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_get_fadeout_time(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void oneshot_node_set_autorestart(string id, bool enable) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_autorestart(swigCPtr, id, enable);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void oneshot_node_set_autorestart_delay(string id, float delay_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_autorestart_delay(swigCPtr, id, delay_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void oneshot_node_set_autorestart_random_delay(string id, float rand_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_autorestart_random_delay(swigCPtr, id, rand_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public bool oneshot_node_has_autorestart(string id) {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_has_autorestart(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public float oneshot_node_get_autorestart_delay(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_get_autorestart_delay(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public float oneshot_node_get_autorestart_random_delay(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_get_autorestart_random_delay(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void oneshot_node_start(string id) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_start(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void oneshot_node_stop(string id) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_stop(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public bool oneshot_node_is_active(string id) {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_is_active(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void oneshot_node_set_filter_path(string id, NodePath path, bool enable) {
    GodotEnginePINVOKE.AnimationTreePlayer_oneshot_node_set_filter_path(swigCPtr, id, NodePath.getCPtr(path), enable);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void mix_node_set_amount(string id, float ratio) {
    GodotEnginePINVOKE.AnimationTreePlayer_mix_node_set_amount(swigCPtr, id, ratio);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float mix_node_get_amount(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_mix_node_get_amount(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void blend2_node_set_amount(string id, float blend) {
    GodotEnginePINVOKE.AnimationTreePlayer_blend2_node_set_amount(swigCPtr, id, blend);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float blend2_node_get_amount(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_blend2_node_get_amount(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void blend2_node_set_filter_path(string id, NodePath path, bool enable) {
    GodotEnginePINVOKE.AnimationTreePlayer_blend2_node_set_filter_path(swigCPtr, id, NodePath.getCPtr(path), enable);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void blend3_node_set_amount(string id, float blend) {
    GodotEnginePINVOKE.AnimationTreePlayer_blend3_node_set_amount(swigCPtr, id, blend);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float blend3_node_get_amount(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_blend3_node_get_amount(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void blend4_node_set_amount(string id, Vector2 blend) {
    GodotEnginePINVOKE.AnimationTreePlayer_blend4_node_set_amount(swigCPtr, id, Vector2.getCPtr(blend));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 blend4_node_get_amount(string id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.AnimationTreePlayer_blend4_node_get_amount(swigCPtr, id), true);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void timescale_node_set_scale(string id, float scale) {
    GodotEnginePINVOKE.AnimationTreePlayer_timescale_node_set_scale(swigCPtr, id, scale);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float timescale_node_get_scale(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_timescale_node_get_scale(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void timeseek_node_seek(string id, float pos_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_timeseek_node_seek(swigCPtr, id, pos_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void transition_node_set_input_count(string id, int count) {
    GodotEnginePINVOKE.AnimationTreePlayer_transition_node_set_input_count(swigCPtr, id, count);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int transition_node_get_input_count(string id) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_transition_node_get_input_count(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void transition_node_delete_input(string id, int input_idx) {
    GodotEnginePINVOKE.AnimationTreePlayer_transition_node_delete_input(swigCPtr, id, input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void transition_node_set_input_auto_advance(string id, int input_idx, bool enable) {
    GodotEnginePINVOKE.AnimationTreePlayer_transition_node_set_input_auto_advance(swigCPtr, id, input_idx, enable);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public bool transition_node_has_input_auto_advance(string id, int input_idx) {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_transition_node_has_input_auto_advance(swigCPtr, id, input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void transition_node_set_xfade_time(string id, float time_sec) {
    GodotEnginePINVOKE.AnimationTreePlayer_transition_node_set_xfade_time(swigCPtr, id, time_sec);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float transition_node_get_xfade_time(string id) {
    float ret = GodotEnginePINVOKE.AnimationTreePlayer_transition_node_get_xfade_time(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void transition_node_set_current(string id, int input_idx) {
    GodotEnginePINVOKE.AnimationTreePlayer_transition_node_set_current(swigCPtr, id, input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int transition_node_get_current(string id) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_transition_node_get_current(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void node_set_pos(string id, Vector2 screen_pos) {
    GodotEnginePINVOKE.AnimationTreePlayer_node_set_pos(swigCPtr, id, Vector2.getCPtr(screen_pos));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 node_get_pos(string id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.AnimationTreePlayer_node_get_pos(swigCPtr, id), true);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void remove_node(string id) {
    GodotEnginePINVOKE.AnimationTreePlayer_remove_node(swigCPtr, id);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int connect(string id, string dst_id, int dst_input_idx) {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_connect(swigCPtr, id, dst_id, dst_input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public bool is_connected(string id, string dst_id, int dst_input_idx) {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_is_connected(swigCPtr, id, dst_id, dst_input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void disconnect(string id, int dst_input_idx) {
    GodotEnginePINVOKE.AnimationTreePlayer_disconnect(swigCPtr, id, dst_input_idx);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_active(bool enabled) {
    GodotEnginePINVOKE.AnimationTreePlayer_set_active(swigCPtr, enabled);
  }

  public bool is_active() {
    bool ret = GodotEnginePINVOKE.AnimationTreePlayer_is_active(swigCPtr);
    return ret;
  }

  public void set_base_path(NodePath path) {
    GodotEnginePINVOKE.AnimationTreePlayer_set_base_path(swigCPtr, NodePath.getCPtr(path));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public NodePath get_base_path() {
    NodePath ret = new NodePath(GodotEnginePINVOKE.AnimationTreePlayer_get_base_path(swigCPtr), true);
    return ret;
  }

  public void set_master_player(NodePath nodepath) {
    GodotEnginePINVOKE.AnimationTreePlayer_set_master_player(swigCPtr, NodePath.getCPtr(nodepath));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public NodePath get_master_player() {
    NodePath ret = new NodePath(GodotEnginePINVOKE.AnimationTreePlayer_get_master_player(swigCPtr), true);
    return ret;
  }

  public SWIGTYPE_p_StringArray get_node_list() {
    SWIGTYPE_p_StringArray ret = new SWIGTYPE_p_StringArray(GodotEnginePINVOKE.AnimationTreePlayer_get_node_list(swigCPtr), true);
    return ret;
  }

  public void set_animation_process_mode(int mode) {
    GodotEnginePINVOKE.AnimationTreePlayer_set_animation_process_mode(swigCPtr, mode);
  }

  public int get_animation_process_mode() {
    int ret = GodotEnginePINVOKE.AnimationTreePlayer_get_animation_process_mode(swigCPtr);
    return ret;
  }

  public void advance(float delta) {
    GodotEnginePINVOKE.AnimationTreePlayer_advance(swigCPtr, delta);
  }

  public void reset() {
    GodotEnginePINVOKE.AnimationTreePlayer_reset(swigCPtr);
  }

  public void recompute_caches() {
    GodotEnginePINVOKE.AnimationTreePlayer_recompute_caches(swigCPtr);
  }

  public AnimationTreePlayer() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_AnimationTreePlayer());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
