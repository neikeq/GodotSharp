/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class TileSet : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal TileSet(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.TileSet_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected TileSet(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.TileSet_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(TileSet obj) {
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



  public void create_tile(int id) {
    GodotEnginePINVOKE.TileSet_create_tile(swigCPtr, id);
  }

  public void tile_set_name(int id, string name) {
    GodotEnginePINVOKE.TileSet_tile_set_name(swigCPtr, id, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string tile_get_name(int id) {
    string ret = GodotEnginePINVOKE.TileSet_tile_get_name(swigCPtr, id);
    return ret;
  }

  public void tile_set_texture(int id, SWIGTYPE_p_RefT_Texture_t texture) {
    GodotEnginePINVOKE.TileSet_tile_set_texture(swigCPtr, id, SWIGTYPE_p_RefT_Texture_t.getCPtr(texture));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_Texture_t tile_get_texture(int id) {
    SWIGTYPE_p_RefT_Texture_t ret = new SWIGTYPE_p_RefT_Texture_t(GodotEnginePINVOKE.TileSet_tile_get_texture(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_material(int id, SWIGTYPE_p_RefT_CanvasItemMaterial_t material) {
    GodotEnginePINVOKE.TileSet_tile_set_material(swigCPtr, id, SWIGTYPE_p_RefT_CanvasItemMaterial_t.getCPtr(material));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_CanvasItemMaterial_t tile_get_material(int id) {
    SWIGTYPE_p_RefT_CanvasItemMaterial_t ret = new SWIGTYPE_p_RefT_CanvasItemMaterial_t(GodotEnginePINVOKE.TileSet_tile_get_material(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_texture_offset(int id, Vector2 texture_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_texture_offset(swigCPtr, id, Vector2.getCPtr(texture_offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_texture_offset(int id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.TileSet_tile_get_texture_offset(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_shape_offset(int id, Vector2 shape_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_shape_offset(swigCPtr, id, Vector2.getCPtr(shape_offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_shape_offset(int id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.TileSet_tile_get_shape_offset(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_region(int id, SWIGTYPE_p_Rect2 region) {
    GodotEnginePINVOKE.TileSet_tile_set_region(swigCPtr, id, SWIGTYPE_p_Rect2.getCPtr(region));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Rect2 tile_get_region(int id) {
    SWIGTYPE_p_Rect2 ret = new SWIGTYPE_p_Rect2(GodotEnginePINVOKE.TileSet_tile_get_region(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_shape(int id, SWIGTYPE_p_RefT_Shape2D_t shape) {
    GodotEnginePINVOKE.TileSet_tile_set_shape(swigCPtr, id, SWIGTYPE_p_RefT_Shape2D_t.getCPtr(shape));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_Shape2D_t tile_get_shape(int id) {
    SWIGTYPE_p_RefT_Shape2D_t ret = new SWIGTYPE_p_RefT_Shape2D_t(GodotEnginePINVOKE.TileSet_tile_get_shape(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_shapes(int id, SWIGTYPE_p_Array shapes) {
    GodotEnginePINVOKE.TileSet_tile_set_shapes(swigCPtr, id, SWIGTYPE_p_Array.getCPtr(shapes));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Array tile_get_shapes(int id) {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.TileSet_tile_get_shapes(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_navigation_polygon(int id, SWIGTYPE_p_RefT_NavigationPolygon_t navigation_polygon) {
    GodotEnginePINVOKE.TileSet_tile_set_navigation_polygon(swigCPtr, id, SWIGTYPE_p_RefT_NavigationPolygon_t.getCPtr(navigation_polygon));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_NavigationPolygon_t tile_get_navigation_polygon(int id) {
    SWIGTYPE_p_RefT_NavigationPolygon_t ret = new SWIGTYPE_p_RefT_NavigationPolygon_t(GodotEnginePINVOKE.TileSet_tile_get_navigation_polygon(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_navigation_polygon_offset(int id, Vector2 navigation_polygon_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_navigation_polygon_offset(swigCPtr, id, Vector2.getCPtr(navigation_polygon_offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_navigation_polygon_offset(int id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.TileSet_tile_get_navigation_polygon_offset(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_light_occluder(int id, SWIGTYPE_p_RefT_OccluderPolygon2D_t light_occluder) {
    GodotEnginePINVOKE.TileSet_tile_set_light_occluder(swigCPtr, id, SWIGTYPE_p_RefT_OccluderPolygon2D_t.getCPtr(light_occluder));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_OccluderPolygon2D_t tile_get_light_occluder(int id) {
    SWIGTYPE_p_RefT_OccluderPolygon2D_t ret = new SWIGTYPE_p_RefT_OccluderPolygon2D_t(GodotEnginePINVOKE.TileSet_tile_get_light_occluder(swigCPtr, id), true);
    return ret;
  }

  public void tile_set_occluder_offset(int id, Vector2 occluder_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_occluder_offset(swigCPtr, id, Vector2.getCPtr(occluder_offset));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_occluder_offset(int id) {
    Vector2 ret = new Vector2(GodotEnginePINVOKE.TileSet_tile_get_occluder_offset(swigCPtr, id), true);
    return ret;
  }

  public void remove_tile(int id) {
    GodotEnginePINVOKE.TileSet_remove_tile(swigCPtr, id);
  }

  public void clear() {
    GodotEnginePINVOKE.TileSet_clear(swigCPtr);
  }

  public int get_last_unused_tile_id() {
    int ret = GodotEnginePINVOKE.TileSet_get_last_unused_tile_id(swigCPtr);
    return ret;
  }

  public int find_tile_by_name(string name) {
    int ret = GodotEnginePINVOKE.TileSet_find_tile_by_name(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public SWIGTYPE_p_Array get_tiles_ids() {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.TileSet_get_tiles_ids(swigCPtr), true);
    return ret;
  }

  public TileSet() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_TileSet());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
