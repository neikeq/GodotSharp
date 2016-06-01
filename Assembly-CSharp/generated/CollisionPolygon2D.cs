/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class CollisionPolygon2D : Node2D {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal CollisionPolygon2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.CollisionPolygon2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected CollisionPolygon2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.CollisionPolygon2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(CollisionPolygon2D obj) {
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



  public void set_polygon(SWIGTYPE_p_Vector2Array polygon) {
    GodotEnginePINVOKE.CollisionPolygon2D_set_polygon(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(polygon));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector2Array get_polygon() {
    SWIGTYPE_p_Vector2Array ret = new SWIGTYPE_p_Vector2Array(GodotEnginePINVOKE.CollisionPolygon2D_get_polygon(swigCPtr), true);
    return ret;
  }

  public void set_build_mode(int build_mode) {
    GodotEnginePINVOKE.CollisionPolygon2D_set_build_mode(swigCPtr, build_mode);
  }

  public int get_build_mode() {
    int ret = GodotEnginePINVOKE.CollisionPolygon2D_get_build_mode(swigCPtr);
    return ret;
  }

  public void set_trigger(bool trigger) {
    GodotEnginePINVOKE.CollisionPolygon2D_set_trigger(swigCPtr, trigger);
  }

  public bool is_trigger() {
    bool ret = GodotEnginePINVOKE.CollisionPolygon2D_is_trigger(swigCPtr);
    return ret;
  }

  public int get_collision_object_first_shape() {
    int ret = GodotEnginePINVOKE.CollisionPolygon2D_get_collision_object_first_shape(swigCPtr);
    return ret;
  }

  public int get_collision_object_last_shape() {
    int ret = GodotEnginePINVOKE.CollisionPolygon2D_get_collision_object_last_shape(swigCPtr);
    return ret;
  }

  public CollisionPolygon2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_CollisionPolygon2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
