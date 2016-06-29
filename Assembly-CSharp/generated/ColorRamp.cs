/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class ColorRamp : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal ColorRamp(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.ColorRamp_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected ColorRamp(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.ColorRamp_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(ColorRamp obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~ColorRamp() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_ColorRamp(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public ColorRamp() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_ColorRamp());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void add_point(float offset, SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.ColorRamp_add_point(swigCPtr, offset, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void remove_point(int offset) {
    GodotEnginePINVOKE.ColorRamp_remove_point(swigCPtr, offset);
  }

  public void set_offset(int point, float offset) {
    GodotEnginePINVOKE.ColorRamp_set_offset(swigCPtr, point, offset);
  }

  public float get_offset(int point) {
    float ret = GodotEnginePINVOKE.ColorRamp_get_offset(swigCPtr, point);
    return ret;
  }

  public void set_color(int point, SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.ColorRamp_set_color(swigCPtr, point, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_color(int point) {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.ColorRamp_get_color(swigCPtr, point), true);
    return ret;
  }

  public SWIGTYPE_p_Color interpolate(float offset) {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.ColorRamp_interpolate(swigCPtr, offset), true);
    return ret;
  }

  public int get_point_count() {
    int ret = GodotEnginePINVOKE.ColorRamp_get_point_count(swigCPtr);
    return ret;
  }

  public void set_offsets(SWIGTYPE_p_RealArray offsets) {
    GodotEnginePINVOKE.ColorRamp_set_offsets(swigCPtr, SWIGTYPE_p_RealArray.getCPtr(offsets));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RealArray get_offsets() {
    SWIGTYPE_p_RealArray ret = new SWIGTYPE_p_RealArray(GodotEnginePINVOKE.ColorRamp_get_offsets(swigCPtr), true);
    return ret;
  }

  public void set_colors(SWIGTYPE_p_ColorArray colors) {
    GodotEnginePINVOKE.ColorRamp_set_colors(swigCPtr, SWIGTYPE_p_ColorArray.getCPtr(colors));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_ColorArray get_colors() {
    SWIGTYPE_p_ColorArray ret = new SWIGTYPE_p_ColorArray(GodotEnginePINVOKE.ColorRamp_get_colors(swigCPtr), true);
    return ret;
  }

}

}
