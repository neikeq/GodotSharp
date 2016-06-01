/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Light2D : Node2D {
  public static readonly int MODE_ADD = 0;
  public static readonly int MODE_SUB = 1;
  public static readonly int MODE_MIX = 2;
  public static readonly int MODE_MASK = 3;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Light2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Light2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Light2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Light2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Light2D obj) {
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



  public void set_enabled(bool enabled) {
    GodotEnginePINVOKE.Light2D_set_enabled(swigCPtr, enabled);
  }

  public bool is_enabled() {
    bool ret = GodotEnginePINVOKE.Light2D_is_enabled(swigCPtr);
    return ret;
  }

  public void set_texture(Object texture) {
    GodotEnginePINVOKE.Light2D_set_texture(swigCPtr, Object.getCPtr(texture));
  }

  public Object get_texture() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Light2D_get_texture(swigCPtr);
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr);
    if (ret == null) {
      ret = new Object(cPtr, false);
    }
    return ret;
  }

  public void set_texture_offset(Vector2 texture_offset) {
    GodotEnginePINVOKE.Light2D_set_texture_offset(swigCPtr, Vector2.getCPtr(texture_offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_texture_offset() {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.Light2D_get_texture_offset(swigCPtr), true);
    return ret;
  }

  public void set_color(SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.Light2D_set_color(swigCPtr, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_color() {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.Light2D_get_color(swigCPtr), true);
    return ret;
  }

  public void set_height(float height) {
    GodotEnginePINVOKE.Light2D_set_height(swigCPtr, height);
  }

  public float get_height() {
    float ret = GodotEnginePINVOKE.Light2D_get_height(swigCPtr);
    return ret;
  }

  public void set_energy(float energy) {
    GodotEnginePINVOKE.Light2D_set_energy(swigCPtr, energy);
  }

  public float get_energy() {
    float ret = GodotEnginePINVOKE.Light2D_get_energy(swigCPtr);
    return ret;
  }

  public void set_texture_scale(float texture_scale) {
    GodotEnginePINVOKE.Light2D_set_texture_scale(swigCPtr, texture_scale);
  }

  public float get_texture_scale() {
    float ret = GodotEnginePINVOKE.Light2D_get_texture_scale(swigCPtr);
    return ret;
  }

  public void set_z_range_min(int z) {
    GodotEnginePINVOKE.Light2D_set_z_range_min(swigCPtr, z);
  }

  public int get_z_range_min() {
    int ret = GodotEnginePINVOKE.Light2D_get_z_range_min(swigCPtr);
    return ret;
  }

  public void set_z_range_max(int z) {
    GodotEnginePINVOKE.Light2D_set_z_range_max(swigCPtr, z);
  }

  public int get_z_range_max() {
    int ret = GodotEnginePINVOKE.Light2D_get_z_range_max(swigCPtr);
    return ret;
  }

  public void set_layer_range_min(int layer) {
    GodotEnginePINVOKE.Light2D_set_layer_range_min(swigCPtr, layer);
  }

  public int get_layer_range_min() {
    int ret = GodotEnginePINVOKE.Light2D_get_layer_range_min(swigCPtr);
    return ret;
  }

  public void set_layer_range_max(int layer) {
    GodotEnginePINVOKE.Light2D_set_layer_range_max(swigCPtr, layer);
  }

  public int get_layer_range_max() {
    int ret = GodotEnginePINVOKE.Light2D_get_layer_range_max(swigCPtr);
    return ret;
  }

  public void set_item_mask(int item_mask) {
    GodotEnginePINVOKE.Light2D_set_item_mask(swigCPtr, item_mask);
  }

  public int get_item_mask() {
    int ret = GodotEnginePINVOKE.Light2D_get_item_mask(swigCPtr);
    return ret;
  }

  public void set_item_shadow_mask(int item_shadow_mask) {
    GodotEnginePINVOKE.Light2D_set_item_shadow_mask(swigCPtr, item_shadow_mask);
  }

  public int get_item_shadow_mask() {
    int ret = GodotEnginePINVOKE.Light2D_get_item_shadow_mask(swigCPtr);
    return ret;
  }

  public void set_mode(int mode) {
    GodotEnginePINVOKE.Light2D_set_mode(swigCPtr, mode);
  }

  public int get_mode() {
    int ret = GodotEnginePINVOKE.Light2D_get_mode(swigCPtr);
    return ret;
  }

  public void set_shadow_enabled(bool enabled) {
    GodotEnginePINVOKE.Light2D_set_shadow_enabled(swigCPtr, enabled);
  }

  public bool is_shadow_enabled() {
    bool ret = GodotEnginePINVOKE.Light2D_is_shadow_enabled(swigCPtr);
    return ret;
  }

  public void set_shadow_buffer_size(int size) {
    GodotEnginePINVOKE.Light2D_set_shadow_buffer_size(swigCPtr, size);
  }

  public int get_shadow_buffer_size() {
    int ret = GodotEnginePINVOKE.Light2D_get_shadow_buffer_size(swigCPtr);
    return ret;
  }

  public void set_shadow_esm_multiplier(float multiplier) {
    GodotEnginePINVOKE.Light2D_set_shadow_esm_multiplier(swigCPtr, multiplier);
  }

  public float get_shadow_esm_multiplier() {
    float ret = GodotEnginePINVOKE.Light2D_get_shadow_esm_multiplier(swigCPtr);
    return ret;
  }

  public void set_shadow_color(SWIGTYPE_p_Color shadow_color) {
    GodotEnginePINVOKE.Light2D_set_shadow_color(swigCPtr, SWIGTYPE_p_Color.getCPtr(shadow_color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_shadow_color() {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.Light2D_get_shadow_color(swigCPtr), true);
    return ret;
  }

  public Light2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Light2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
