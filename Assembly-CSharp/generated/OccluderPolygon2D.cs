/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class OccluderPolygon2D : Resource {
  public static readonly int CULL_DISABLED = 0;
  public static readonly int CULL_CLOCKWISE = 1;
  public static readonly int CULL_COUNTER_CLOCKWISE = 2;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal OccluderPolygon2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.OccluderPolygon2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected OccluderPolygon2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.OccluderPolygon2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(OccluderPolygon2D obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~OccluderPolygon2D() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_OccluderPolygon2D(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public OccluderPolygon2D() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_OccluderPolygon2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_closed(bool closed) {
    GodotEnginePINVOKE.OccluderPolygon2D_set_closed(swigCPtr, closed);
  }

  public bool is_closed() {
    bool ret = GodotEnginePINVOKE.OccluderPolygon2D_is_closed(swigCPtr);
    return ret;
  }

  public void set_cull_mode(int cull_mode) {
    GodotEnginePINVOKE.OccluderPolygon2D_set_cull_mode(swigCPtr, cull_mode);
  }

  public int get_cull_mode() {
    int ret = GodotEnginePINVOKE.OccluderPolygon2D_get_cull_mode(swigCPtr);
    return ret;
  }

  public void set_polygon(SWIGTYPE_p_Vector2Array polygon) {
    GodotEnginePINVOKE.OccluderPolygon2D_set_polygon(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(polygon));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector2Array get_polygon() {
    SWIGTYPE_p_Vector2Array ret = new SWIGTYPE_p_Vector2Array(GodotEnginePINVOKE.OccluderPolygon2D_get_polygon(swigCPtr), true);
    return ret;
  }

}

}
