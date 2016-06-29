/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Node2D : CanvasItem {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Node2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Node2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Node2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Node2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Node2D obj) {
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



  public Node2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Node2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_pos(Vector2 pos) {
    GodotEnginePINVOKE.Node2D_set_pos(swigCPtr, ref pos);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_rot(float radians) {
    GodotEnginePINVOKE.Node2D_set_rot(swigCPtr, radians);
  }

  public void set_rotd(float degrees) {
    GodotEnginePINVOKE.Node2D_set_rotd(swigCPtr, degrees);
  }

  public void set_scale(Vector2 scale) {
    GodotEnginePINVOKE.Node2D_set_scale(swigCPtr, ref scale);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_pos() {
    Vector2 ret = GodotEnginePINVOKE.Node2D_get_pos(swigCPtr);
    return ret;
}

  public float get_rot() {
    float ret = GodotEnginePINVOKE.Node2D_get_rot(swigCPtr);
    return ret;
  }

  public float get_rotd() {
    float ret = GodotEnginePINVOKE.Node2D_get_rotd(swigCPtr);
    return ret;
  }

  public Vector2 get_scale() {
    Vector2 ret = GodotEnginePINVOKE.Node2D_get_scale(swigCPtr);
    return ret;
}

  public void rotate(float radians) {
    GodotEnginePINVOKE.Node2D_rotate(swigCPtr, radians);
  }

  public void move_local_x(float delta, bool scaled) {
    GodotEnginePINVOKE.Node2D_move_local_x__SWIG_0(swigCPtr, delta, scaled);
  }

  public void move_local_x(float delta) {
    GodotEnginePINVOKE.Node2D_move_local_x__SWIG_1(swigCPtr, delta);
  }

  public void move_local_y(float delta, bool scaled) {
    GodotEnginePINVOKE.Node2D_move_local_y__SWIG_0(swigCPtr, delta, scaled);
  }

  public void move_local_y(float delta) {
    GodotEnginePINVOKE.Node2D_move_local_y__SWIG_1(swigCPtr, delta);
  }

  public void translate(Vector2 offset) {
    GodotEnginePINVOKE.Node2D_translate(swigCPtr, ref offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void global_translate(Vector2 offset) {
    GodotEnginePINVOKE.Node2D_global_translate(swigCPtr, ref offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void scale(Vector2 ratio) {
    GodotEnginePINVOKE.Node2D_scale(swigCPtr, ref ratio);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_global_pos(Vector2 pos) {
    GodotEnginePINVOKE.Node2D_set_global_pos(swigCPtr, ref pos);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_global_pos() {
    Vector2 ret = GodotEnginePINVOKE.Node2D_get_global_pos(swigCPtr);
    return ret;
}

  public void set_transform(Matrix32 xform) {
    GodotEnginePINVOKE.Node2D_set_transform(swigCPtr, ref xform.elements);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_global_transform(Matrix32 xform) {
    GodotEnginePINVOKE.Node2D_set_global_transform(swigCPtr, ref xform.elements);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void look_at(Vector2 point) {
    GodotEnginePINVOKE.Node2D_look_at(swigCPtr, ref point);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float get_angle_to(Vector2 point) {
    float ret = GodotEnginePINVOKE.Node2D_get_angle_to(swigCPtr, ref point);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void set_z(int z) {
    GodotEnginePINVOKE.Node2D_set_z(swigCPtr, z);
  }

  public int get_z() {
    int ret = GodotEnginePINVOKE.Node2D_get_z(swigCPtr);
    return ret;
  }

  public void set_z_as_relative(bool enable) {
    GodotEnginePINVOKE.Node2D_set_z_as_relative(swigCPtr, enable);
  }

  public bool is_z_relative() {
    bool ret = GodotEnginePINVOKE.Node2D_is_z_relative(swigCPtr);
    return ret;
  }

  public void edit_set_pivot(Vector2 pivot) {
    GodotEnginePINVOKE.Node2D_edit_set_pivot(swigCPtr, ref pivot);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Matrix32 get_relative_transform_to_parent(Object parent) {
    Matrix32 ret = new Matrix32(GodotEnginePINVOKE.Node2D_get_relative_transform_to_parent(swigCPtr, Object.getCPtr(parent)));
    return ret;
}

}

}
