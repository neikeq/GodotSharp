/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Animation : Resource {
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
  
  internal Animation(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Animation_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Animation(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Animation_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Animation obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Animation() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Animation(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public Animation() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Animation());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public int add_track(int type, int at_pos) {
    int ret = GodotEnginePINVOKE.Animation_add_track__SWIG_0(swigCPtr, type, at_pos);
    return ret;
  }

  public int add_track(int type) {
    int ret = GodotEnginePINVOKE.Animation_add_track__SWIG_1(swigCPtr, type);
    return ret;
  }

  public void remove_track(int idx) {
    GodotEnginePINVOKE.Animation_remove_track(swigCPtr, idx);
  }

  public int get_track_count() {
    int ret = GodotEnginePINVOKE.Animation_get_track_count(swigCPtr);
    return ret;
  }

  public int track_get_type(int idx) {
    int ret = GodotEnginePINVOKE.Animation_track_get_type(swigCPtr, idx);
    return ret;
  }

  public NodePath track_get_path(int idx) {
    NodePath ret = new NodePath(GodotEnginePINVOKE.Animation_track_get_path(swigCPtr, idx), true);
    return ret;
  }

  public void track_set_path(int idx, NodePath path) {
    GodotEnginePINVOKE.Animation_track_set_path(swigCPtr, idx, NodePath.getCPtr(path));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int find_track(NodePath path) {
    int ret = GodotEnginePINVOKE.Animation_find_track(swigCPtr, NodePath.getCPtr(path));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void track_move_up(int idx) {
    GodotEnginePINVOKE.Animation_track_move_up(swigCPtr, idx);
  }

  public void track_move_down(int idx) {
    GodotEnginePINVOKE.Animation_track_move_down(swigCPtr, idx);
  }

  public void track_set_imported(int idx, bool imported) {
    GodotEnginePINVOKE.Animation_track_set_imported(swigCPtr, idx, imported);
  }

  public bool track_is_imported(int idx) {
    bool ret = GodotEnginePINVOKE.Animation_track_is_imported(swigCPtr, idx);
    return ret;
  }

  public int transform_track_insert_key(int idx, float time, SWIGTYPE_p_Vector3 loc, SWIGTYPE_p_Quat rot, SWIGTYPE_p_Vector3 scale) {
    int ret = GodotEnginePINVOKE.Animation_transform_track_insert_key(swigCPtr, idx, time, SWIGTYPE_p_Vector3.getCPtr(loc), SWIGTYPE_p_Quat.getCPtr(rot), SWIGTYPE_p_Vector3.getCPtr(scale));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void track_insert_key(int idx, float time, Variant key, float transition) {
    GodotEnginePINVOKE.Animation_track_insert_key__SWIG_0(swigCPtr, idx, time, Variant.getCPtr(key), transition);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void track_insert_key(int idx, float time, Variant key) {
    GodotEnginePINVOKE.Animation_track_insert_key__SWIG_1(swigCPtr, idx, time, Variant.getCPtr(key));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void track_remove_key(int idx, int key_idx) {
    GodotEnginePINVOKE.Animation_track_remove_key(swigCPtr, idx, key_idx);
  }

  public void track_remove_key_at_pos(int idx, float pos) {
    GodotEnginePINVOKE.Animation_track_remove_key_at_pos(swigCPtr, idx, pos);
  }

  public void track_set_key_value(int idx, int key, Variant value) {
    GodotEnginePINVOKE.Animation_track_set_key_value(swigCPtr, idx, key, Variant.getCPtr(value));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void track_set_key_transition(int idx, int key_idx, float transition) {
    GodotEnginePINVOKE.Animation_track_set_key_transition(swigCPtr, idx, key_idx, transition);
  }

  public float track_get_key_transition(int idx, int key_idx) {
    float ret = GodotEnginePINVOKE.Animation_track_get_key_transition(swigCPtr, idx, key_idx);
    return ret;
  }

  public int track_get_key_count(int idx) {
    int ret = GodotEnginePINVOKE.Animation_track_get_key_count(swigCPtr, idx);
    return ret;
  }

  public void track_get_key_value(int idx, int key_idx) {
    GodotEnginePINVOKE.Animation_track_get_key_value(swigCPtr, idx, key_idx);
  }

  public float track_get_key_time(int idx, int key_idx) {
    float ret = GodotEnginePINVOKE.Animation_track_get_key_time(swigCPtr, idx, key_idx);
    return ret;
  }

  public int track_find_key(int idx, float time, bool exact) {
    int ret = GodotEnginePINVOKE.Animation_track_find_key__SWIG_0(swigCPtr, idx, time, exact);
    return ret;
  }

  public int track_find_key(int idx, float time) {
    int ret = GodotEnginePINVOKE.Animation_track_find_key__SWIG_1(swigCPtr, idx, time);
    return ret;
  }

  public void track_set_interpolation_type(int idx, int interpolation) {
    GodotEnginePINVOKE.Animation_track_set_interpolation_type(swigCPtr, idx, interpolation);
  }

  public int track_get_interpolation_type(int idx) {
    int ret = GodotEnginePINVOKE.Animation_track_get_interpolation_type(swigCPtr, idx);
    return ret;
  }

  public SWIGTYPE_p_Array transform_track_interpolate(int idx, float time_sec) {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.Animation_transform_track_interpolate(swigCPtr, idx, time_sec), true);
    return ret;
  }

  public void value_track_set_update_mode(int idx, int mode) {
    GodotEnginePINVOKE.Animation_value_track_set_update_mode(swigCPtr, idx, mode);
  }

  public int value_track_get_update_mode(int idx) {
    int ret = GodotEnginePINVOKE.Animation_value_track_get_update_mode(swigCPtr, idx);
    return ret;
  }

  public SWIGTYPE_p_IntArray value_track_get_key_indices(int idx, float time_sec, float delta) {
    SWIGTYPE_p_IntArray ret = new SWIGTYPE_p_IntArray(GodotEnginePINVOKE.Animation_value_track_get_key_indices(swigCPtr, idx, time_sec, delta), true);
    return ret;
  }

  public SWIGTYPE_p_IntArray method_track_get_key_indices(int idx, float time_sec, float delta) {
    SWIGTYPE_p_IntArray ret = new SWIGTYPE_p_IntArray(GodotEnginePINVOKE.Animation_method_track_get_key_indices(swigCPtr, idx, time_sec, delta), true);
    return ret;
  }

  public string method_track_get_name(int idx, int key_idx) {
    string ret = GodotEnginePINVOKE.Animation_method_track_get_name(swigCPtr, idx, key_idx);
    return ret;
  }

  public SWIGTYPE_p_Array method_track_get_params(int idx, int key_idx) {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.Animation_method_track_get_params(swigCPtr, idx, key_idx), true);
    return ret;
  }

  public void set_length(float time_sec) {
    GodotEnginePINVOKE.Animation_set_length(swigCPtr, time_sec);
  }

  public float get_length() {
    float ret = GodotEnginePINVOKE.Animation_get_length(swigCPtr);
    return ret;
  }

  public void set_loop(bool enabled) {
    GodotEnginePINVOKE.Animation_set_loop(swigCPtr, enabled);
  }

  public void set_loop_interpolation(bool enabled) {
    GodotEnginePINVOKE.Animation_set_loop_interpolation(swigCPtr, enabled);
  }

  public bool has_loop() {
    bool ret = GodotEnginePINVOKE.Animation_has_loop(swigCPtr);
    return ret;
  }

  public bool has_loop_interpolation() {
    bool ret = GodotEnginePINVOKE.Animation_has_loop_interpolation(swigCPtr);
    return ret;
  }

  public void set_step(float size_sec) {
    GodotEnginePINVOKE.Animation_set_step(swigCPtr, size_sec);
  }

  public float get_step() {
    float ret = GodotEnginePINVOKE.Animation_get_step(swigCPtr);
    return ret;
  }

  public void clear() {
    GodotEnginePINVOKE.Animation_clear(swigCPtr);
  }

}

}
