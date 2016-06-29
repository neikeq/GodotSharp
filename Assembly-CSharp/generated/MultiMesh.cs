/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class MultiMesh : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal MultiMesh(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.MultiMesh_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected MultiMesh(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.MultiMesh_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(MultiMesh obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~MultiMesh() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_MultiMesh(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public MultiMesh() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_MultiMesh());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_mesh(Mesh mesh) {
    GodotEnginePINVOKE.MultiMesh_set_mesh(swigCPtr, Mesh.getCPtr(mesh));
  }

  public Mesh get_mesh() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.MultiMesh_get_mesh(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Mesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Mesh;
    return ret;
}

  public void set_instance_count(int count) {
    GodotEnginePINVOKE.MultiMesh_set_instance_count(swigCPtr, count);
  }

  public int get_instance_count() {
    int ret = GodotEnginePINVOKE.MultiMesh_get_instance_count(swigCPtr);
    return ret;
  }

  public void set_instance_transform(int instance, SWIGTYPE_p_Transform transform) {
    GodotEnginePINVOKE.MultiMesh_set_instance_transform(swigCPtr, instance, SWIGTYPE_p_Transform.getCPtr(transform));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Transform get_instance_transform(int instance) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.MultiMesh_get_instance_transform(swigCPtr, instance), true);
    return ret;
  }

  public void set_instance_color(int instance, SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.MultiMesh_set_instance_color(swigCPtr, instance, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_instance_color(int instance) {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.MultiMesh_get_instance_color(swigCPtr, instance), true);
    return ret;
  }

  public void set_aabb(SWIGTYPE_p_AABB visibility_aabb) {
    GodotEnginePINVOKE.MultiMesh_set_aabb(swigCPtr, SWIGTYPE_p_AABB.getCPtr(visibility_aabb));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_AABB get_aabb() {
    SWIGTYPE_p_AABB ret = new SWIGTYPE_p_AABB(GodotEnginePINVOKE.MultiMesh_get_aabb(swigCPtr), true);
    return ret;
  }

  public void generate_aabb() {
    GodotEnginePINVOKE.MultiMesh_generate_aabb(swigCPtr);
  }

}

}
