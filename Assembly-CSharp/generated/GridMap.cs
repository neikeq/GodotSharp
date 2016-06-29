/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class GridMap : Spatial {
  public static readonly int INVALID_CELL_ITEM = -1;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal GridMap(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.GridMap_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected GridMap(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.GridMap_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(GridMap obj) {
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



  public GridMap() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_GridMap());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_theme(MeshLibrary theme) {
    GodotEnginePINVOKE.GridMap_set_theme(swigCPtr, MeshLibrary.getCPtr(theme));
  }

  public MeshLibrary get_theme() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.GridMap_get_theme(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MeshLibrary ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MeshLibrary;
    return ret;
}

  public void set_bake(bool enable) {
    GodotEnginePINVOKE.GridMap_set_bake(swigCPtr, enable);
  }

  public bool is_baking_enabled() {
    bool ret = GodotEnginePINVOKE.GridMap_is_baking_enabled(swigCPtr);
    return ret;
  }

  public void set_cell_size(float size) {
    GodotEnginePINVOKE.GridMap_set_cell_size(swigCPtr, size);
  }

  public float get_cell_size() {
    float ret = GodotEnginePINVOKE.GridMap_get_cell_size(swigCPtr);
    return ret;
  }

  public void set_octant_size(int size) {
    GodotEnginePINVOKE.GridMap_set_octant_size(swigCPtr, size);
  }

  public int get_octant_size() {
    int ret = GodotEnginePINVOKE.GridMap_get_octant_size(swigCPtr);
    return ret;
  }

  public void set_cell_item(int x, int y, int z, int item, int orientation) {
    GodotEnginePINVOKE.GridMap_set_cell_item__SWIG_0(swigCPtr, x, y, z, item, orientation);
  }

  public void set_cell_item(int x, int y, int z, int item) {
    GodotEnginePINVOKE.GridMap_set_cell_item__SWIG_1(swigCPtr, x, y, z, item);
  }

  public int get_cell_item(int x, int y, int z) {
    int ret = GodotEnginePINVOKE.GridMap_get_cell_item(swigCPtr, x, y, z);
    return ret;
  }

  public int get_cell_item_orientation(int x, int y, int z) {
    int ret = GodotEnginePINVOKE.GridMap_get_cell_item_orientation(swigCPtr, x, y, z);
    return ret;
  }

  public void resource_changed(Object resource) {
    GodotEnginePINVOKE.GridMap_resource_changed(swigCPtr, Object.getCPtr(resource));
  }

  public void set_center_x(bool enable) {
    GodotEnginePINVOKE.GridMap_set_center_x(swigCPtr, enable);
  }

  public bool get_center_x() {
    bool ret = GodotEnginePINVOKE.GridMap_get_center_x(swigCPtr);
    return ret;
  }

  public void set_center_y(bool enable) {
    GodotEnginePINVOKE.GridMap_set_center_y(swigCPtr, enable);
  }

  public bool get_center_y() {
    bool ret = GodotEnginePINVOKE.GridMap_get_center_y(swigCPtr);
    return ret;
  }

  public void set_center_z(bool enable) {
    GodotEnginePINVOKE.GridMap_set_center_z(swigCPtr, enable);
  }

  public bool get_center_z() {
    bool ret = GodotEnginePINVOKE.GridMap_get_center_z(swigCPtr);
    return ret;
  }

  public void set_clip(bool enabled, bool clipabove, int floor, int axis) {
    GodotEnginePINVOKE.GridMap_set_clip__SWIG_0(swigCPtr, enabled, clipabove, floor, axis);
  }

  public void set_clip(bool enabled, bool clipabove, int floor) {
    GodotEnginePINVOKE.GridMap_set_clip__SWIG_1(swigCPtr, enabled, clipabove, floor);
  }

  public void set_clip(bool enabled, bool clipabove) {
    GodotEnginePINVOKE.GridMap_set_clip__SWIG_2(swigCPtr, enabled, clipabove);
  }

  public void set_clip(bool enabled) {
    GodotEnginePINVOKE.GridMap_set_clip__SWIG_3(swigCPtr, enabled);
  }

  public int create_area(int id, SWIGTYPE_p_AABB area) {
    int ret = GodotEnginePINVOKE.GridMap_create_area(swigCPtr, id, SWIGTYPE_p_AABB.getCPtr(area));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public SWIGTYPE_p_AABB area_get_bounds(int area) {
    SWIGTYPE_p_AABB ret = new SWIGTYPE_p_AABB(GodotEnginePINVOKE.GridMap_area_get_bounds(swigCPtr, area), true);
    return ret;
  }

  public void area_set_exterior_portal(int area, bool enable) {
    GodotEnginePINVOKE.GridMap_area_set_exterior_portal(swigCPtr, area, enable);
  }

  public void area_set_name(int area, string name) {
    GodotEnginePINVOKE.GridMap_area_set_name(swigCPtr, area, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string area_get_name(int area) {
    string ret = GodotEnginePINVOKE.GridMap_area_get_name(swigCPtr, area);
    return ret;
  }

  public bool area_is_exterior_portal(int area) {
    bool ret = GodotEnginePINVOKE.GridMap_area_is_exterior_portal(swigCPtr, area);
    return ret;
  }

  public void area_set_portal_disable_distance(int area, float distance) {
    GodotEnginePINVOKE.GridMap_area_set_portal_disable_distance(swigCPtr, area, distance);
  }

  public float area_get_portal_disable_distance(int area) {
    float ret = GodotEnginePINVOKE.GridMap_area_get_portal_disable_distance(swigCPtr, area);
    return ret;
  }

  public void area_set_portal_disable_color(int area, SWIGTYPE_p_Color color) {
    GodotEnginePINVOKE.GridMap_area_set_portal_disable_color(swigCPtr, area, SWIGTYPE_p_Color.getCPtr(color));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color area_get_portal_disable_color(int area) {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.GridMap_area_get_portal_disable_color(swigCPtr, area), true);
    return ret;
  }

  public void erase_area(int area) {
    GodotEnginePINVOKE.GridMap_erase_area(swigCPtr, area);
  }

  public int get_unused_area_id() {
    int ret = GodotEnginePINVOKE.GridMap_get_unused_area_id(swigCPtr);
    return ret;
  }

  public void bake_geometry() {
    GodotEnginePINVOKE.GridMap_bake_geometry(swigCPtr);
  }

  public void set_use_baked_light(bool use) {
    GodotEnginePINVOKE.GridMap_set_use_baked_light(swigCPtr, use);
  }

  public bool is_using_baked_light() {
    bool ret = GodotEnginePINVOKE.GridMap_is_using_baked_light(swigCPtr);
    return ret;
  }

  public void clear() {
    GodotEnginePINVOKE.GridMap_clear(swigCPtr);
  }

}

}
