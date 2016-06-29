/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Physics2DShapeQueryParameters : Reference {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Physics2DShapeQueryParameters(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Physics2DShapeQueryParameters_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Physics2DShapeQueryParameters(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Physics2DShapeQueryParameters_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Physics2DShapeQueryParameters obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Physics2DShapeQueryParameters() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Physics2DShapeQueryParameters(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public Physics2DShapeQueryParameters() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Physics2DShapeQueryParameters());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_shape(Shape2D shape) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_shape(swigCPtr, Shape2D.getCPtr(shape));
  }

  public void set_shape_rid(SWIGTYPE_p_RID shape) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_shape_rid(swigCPtr, SWIGTYPE_p_RID.getCPtr(shape));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RID get_shape_rid() {
    SWIGTYPE_p_RID ret = new SWIGTYPE_p_RID(GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_shape_rid(swigCPtr), true);
    return ret;
  }

  public void set_transform(Matrix32 transform) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_transform(swigCPtr, ref transform.elements);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Matrix32 get_transform() {
    Matrix32 ret = new Matrix32(GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_transform(swigCPtr));
    return ret;
}

  public void set_motion(Vector2 motion) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_motion(swigCPtr, ref motion);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_motion() {
    Vector2 ret = GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_motion(swigCPtr);
    return ret;
}

  public void set_margin(float margin) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_margin(swigCPtr, margin);
  }

  public float get_margin() {
    float ret = GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_margin(swigCPtr);
    return ret;
  }

  public void set_layer_mask(int layer_mask) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_layer_mask(swigCPtr, layer_mask);
  }

  public int get_layer_mask() {
    int ret = GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_layer_mask(swigCPtr);
    return ret;
  }

  public void set_object_type_mask(int object_type_mask) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_object_type_mask(swigCPtr, object_type_mask);
  }

  public int get_object_type_mask() {
    int ret = GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_object_type_mask(swigCPtr);
    return ret;
  }

  public void set_exclude(SWIGTYPE_p_Array exclude) {
    GodotEnginePINVOKE.Physics2DShapeQueryParameters_set_exclude(swigCPtr, SWIGTYPE_p_Array.getCPtr(exclude));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Array get_exclude() {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.Physics2DShapeQueryParameters_get_exclude(swigCPtr), true);
    return ret;
  }

}

}
