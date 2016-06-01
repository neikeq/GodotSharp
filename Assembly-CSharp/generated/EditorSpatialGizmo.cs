/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class EditorSpatialGizmo : SpatialGizmo {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal EditorSpatialGizmo(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.EditorSpatialGizmo_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected EditorSpatialGizmo(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.EditorSpatialGizmo_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(EditorSpatialGizmo obj) {
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



  public void commit_handle(int index, Variant restore, bool cancel) {
    GodotEnginePINVOKE.EditorSpatialGizmo_commit_handle(swigCPtr, index, Variant.getCPtr(restore), cancel);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_handle_name(int index) {
    string ret = GodotEnginePINVOKE.EditorSpatialGizmo_get_handle_name(swigCPtr, index);
    return ret;
  }

  public Variant get_handle_value(int index) {
    Variant ret = new Variant(GodotEnginePINVOKE.EditorSpatialGizmo_get_handle_value(swigCPtr, index), true);
    return ret;
  }

  public void redraw() {
    GodotEnginePINVOKE.EditorSpatialGizmo_redraw(swigCPtr);
  }

  public void set_handle(int index, Camera camera, Vector2 point) {
    GodotEnginePINVOKE.EditorSpatialGizmo_set_handle(swigCPtr, index, Camera.getCPtr(camera), Vector2.getCPtr(point));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_lines(SWIGTYPE_p_Vector3Array lines, SWIGTYPE_p_RefT_Material_t material, bool billboard) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_lines__SWIG_0(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(lines), SWIGTYPE_p_RefT_Material_t.getCPtr(material), billboard);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_lines(SWIGTYPE_p_Vector3Array lines, SWIGTYPE_p_RefT_Material_t material) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_lines__SWIG_1(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(lines), SWIGTYPE_p_RefT_Material_t.getCPtr(material));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_mesh(SWIGTYPE_p_RefT_Mesh_t mesh, bool billboard, SWIGTYPE_p_RID skeleton) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_mesh__SWIG_0(swigCPtr, SWIGTYPE_p_RefT_Mesh_t.getCPtr(mesh), billboard, SWIGTYPE_p_RID.getCPtr(skeleton));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_mesh(SWIGTYPE_p_RefT_Mesh_t mesh, bool billboard) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_mesh__SWIG_1(swigCPtr, SWIGTYPE_p_RefT_Mesh_t.getCPtr(mesh), billboard);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_mesh(SWIGTYPE_p_RefT_Mesh_t mesh) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_mesh__SWIG_2(swigCPtr, SWIGTYPE_p_RefT_Mesh_t.getCPtr(mesh));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_collision_segments(SWIGTYPE_p_Vector3Array segments) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_collision_segments(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(segments));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_collision_triangles(SWIGTYPE_p_TriangleMesh triangles) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_collision_triangles(swigCPtr, SWIGTYPE_p_TriangleMesh.getCPtr(triangles));
  }

  public void add_unscaled_billboard(SWIGTYPE_p_RefT_Material_t material, float default_scale) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_unscaled_billboard__SWIG_0(swigCPtr, SWIGTYPE_p_RefT_Material_t.getCPtr(material), default_scale);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_unscaled_billboard(SWIGTYPE_p_RefT_Material_t material) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_unscaled_billboard__SWIG_1(swigCPtr, SWIGTYPE_p_RefT_Material_t.getCPtr(material));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_handles(SWIGTYPE_p_Vector3Array handles, bool billboard, bool secondary) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_handles__SWIG_0(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(handles), billboard, secondary);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_handles(SWIGTYPE_p_Vector3Array handles, bool billboard) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_handles__SWIG_1(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(handles), billboard);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_handles(SWIGTYPE_p_Vector3Array handles) {
    GodotEnginePINVOKE.EditorSpatialGizmo_add_handles__SWIG_2(swigCPtr, SWIGTYPE_p_Vector3Array.getCPtr(handles));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_spatial_node(Spatial node) {
    GodotEnginePINVOKE.EditorSpatialGizmo_set_spatial_node(swigCPtr, Spatial.getCPtr(node));
  }

  public EditorSpatialGizmo() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_EditorSpatialGizmo());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
