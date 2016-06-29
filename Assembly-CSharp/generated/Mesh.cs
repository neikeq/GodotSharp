/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Mesh : Resource {
  public static readonly int NO_INDEX_ARRAY = -1;
  public static readonly int ARRAY_WEIGHTS_SIZE = 4;
  public static readonly int ARRAY_VERTEX = 0;
  public static readonly int ARRAY_NORMAL = 1;
  public static readonly int ARRAY_TANGENT = 2;
  public static readonly int ARRAY_COLOR = 3;
  public static readonly int ARRAY_TEX_UV = 4;
  public static readonly int ARRAY_TEX_UV2 = 5;
  public static readonly int ARRAY_BONES = 6;
  public static readonly int ARRAY_WEIGHTS = 7;
  public static readonly int ARRAY_INDEX = 8;
  public static readonly int ARRAY_FORMAT_VERTEX = 1;
  public static readonly int ARRAY_FORMAT_NORMAL = 2;
  public static readonly int ARRAY_FORMAT_TANGENT = 4;
  public static readonly int ARRAY_FORMAT_COLOR = 8;
  public static readonly int ARRAY_FORMAT_TEX_UV = 16;
  public static readonly int ARRAY_FORMAT_TEX_UV2 = 32;
  public static readonly int ARRAY_FORMAT_BONES = 64;
  public static readonly int ARRAY_FORMAT_WEIGHTS = 128;
  public static readonly int ARRAY_FORMAT_INDEX = 256;
  public static readonly int PRIMITIVE_POINTS = 0;
  public static readonly int PRIMITIVE_LINES = 1;
  public static readonly int PRIMITIVE_LINE_STRIP = 2;
  public static readonly int PRIMITIVE_LINE_LOOP = 3;
  public static readonly int PRIMITIVE_TRIANGLES = 4;
  public static readonly int PRIMITIVE_TRIANGLE_STRIP = 5;
  public static readonly int PRIMITIVE_TRIANGLE_FAN = 6;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Mesh(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Mesh_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Mesh(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Mesh_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Mesh obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Mesh() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Mesh(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public Mesh() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Mesh());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void add_morph_target(string name) {
    GodotEnginePINVOKE.Mesh_add_morph_target(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int get_morph_target_count() {
    int ret = GodotEnginePINVOKE.Mesh_get_morph_target_count(swigCPtr);
    return ret;
  }

  public string get_morph_target_name(int index) {
    string ret = GodotEnginePINVOKE.Mesh_get_morph_target_name(swigCPtr, index);
    return ret;
  }

  public void clear_morph_targets() {
    GodotEnginePINVOKE.Mesh_clear_morph_targets(swigCPtr);
  }

  public void set_morph_target_mode(int mode) {
    GodotEnginePINVOKE.Mesh_set_morph_target_mode(swigCPtr, mode);
  }

  public int get_morph_target_mode() {
    int ret = GodotEnginePINVOKE.Mesh_get_morph_target_mode(swigCPtr);
    return ret;
  }

  public void add_surface(int primitive, SWIGTYPE_p_Array arrays, SWIGTYPE_p_Array morph_arrays, bool alphasort) {
    GodotEnginePINVOKE.Mesh_add_surface__SWIG_0(swigCPtr, primitive, SWIGTYPE_p_Array.getCPtr(arrays), SWIGTYPE_p_Array.getCPtr(morph_arrays), alphasort);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_surface(int primitive, SWIGTYPE_p_Array arrays, SWIGTYPE_p_Array morph_arrays) {
    GodotEnginePINVOKE.Mesh_add_surface__SWIG_1(swigCPtr, primitive, SWIGTYPE_p_Array.getCPtr(arrays), SWIGTYPE_p_Array.getCPtr(morph_arrays));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_surface(int primitive, SWIGTYPE_p_Array arrays) {
    GodotEnginePINVOKE.Mesh_add_surface__SWIG_2(swigCPtr, primitive, SWIGTYPE_p_Array.getCPtr(arrays));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int get_surface_count() {
    int ret = GodotEnginePINVOKE.Mesh_get_surface_count(swigCPtr);
    return ret;
  }

  public void surface_remove(int surf_idx) {
    GodotEnginePINVOKE.Mesh_surface_remove(swigCPtr, surf_idx);
  }

  public int surface_get_array_len(int surf_idx) {
    int ret = GodotEnginePINVOKE.Mesh_surface_get_array_len(swigCPtr, surf_idx);
    return ret;
  }

  public int surface_get_array_index_len(int surf_idx) {
    int ret = GodotEnginePINVOKE.Mesh_surface_get_array_index_len(swigCPtr, surf_idx);
    return ret;
  }

  public int surface_get_format(int surf_idx) {
    int ret = GodotEnginePINVOKE.Mesh_surface_get_format(swigCPtr, surf_idx);
    return ret;
  }

  public int surface_get_primitive_type(int surf_idx) {
    int ret = GodotEnginePINVOKE.Mesh_surface_get_primitive_type(swigCPtr, surf_idx);
    return ret;
  }

  public void surface_set_material(int surf_idx, Material material) {
    GodotEnginePINVOKE.Mesh_surface_set_material(swigCPtr, surf_idx, Material.getCPtr(material));
  }

  public Material surface_get_material(int surf_idx) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Mesh_surface_get_material(swigCPtr, surf_idx);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Material ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Material;
    return ret;
}

  public void surface_set_name(int surf_idx, string name) {
    GodotEnginePINVOKE.Mesh_surface_set_name(swigCPtr, surf_idx, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string surface_get_name(int surf_idx) {
    string ret = GodotEnginePINVOKE.Mesh_surface_get_name(swigCPtr, surf_idx);
    return ret;
  }

  public void center_geometry() {
    GodotEnginePINVOKE.Mesh_center_geometry(swigCPtr);
  }

  public void regen_normalmaps() {
    GodotEnginePINVOKE.Mesh_regen_normalmaps(swigCPtr);
  }

  public void set_custom_aabb(SWIGTYPE_p_AABB aabb) {
    GodotEnginePINVOKE.Mesh_set_custom_aabb(swigCPtr, SWIGTYPE_p_AABB.getCPtr(aabb));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_AABB get_custom_aabb() {
    SWIGTYPE_p_AABB ret = new SWIGTYPE_p_AABB(GodotEnginePINVOKE.Mesh_get_custom_aabb(swigCPtr), true);
    return ret;
  }

}

}
