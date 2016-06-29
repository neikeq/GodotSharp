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

  ~TileSet() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_TileSet(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public TileSet() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_TileSet());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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

  public void tile_set_texture(int id, Texture texture) {
    GodotEnginePINVOKE.TileSet_tile_set_texture(swigCPtr, id, Texture.getCPtr(texture));
  }

  public Texture tile_get_texture(int id) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileSet_tile_get_texture(swigCPtr, id);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Texture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Texture;
    return ret;
}

  public void tile_set_material(int id, CanvasItemMaterial material) {
    GodotEnginePINVOKE.TileSet_tile_set_material(swigCPtr, id, CanvasItemMaterial.getCPtr(material));
  }

  public CanvasItemMaterial tile_get_material(int id) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileSet_tile_get_material(swigCPtr, id);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CanvasItemMaterial ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CanvasItemMaterial;
    return ret;
}

  public void tile_set_texture_offset(int id, Vector2 texture_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_texture_offset(swigCPtr, id, ref texture_offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_texture_offset(int id) {
    Vector2 ret = GodotEnginePINVOKE.TileSet_tile_get_texture_offset(swigCPtr, id);
    return ret;
}

  public void tile_set_shape_offset(int id, Vector2 shape_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_shape_offset(swigCPtr, id, ref shape_offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_shape_offset(int id) {
    Vector2 ret = GodotEnginePINVOKE.TileSet_tile_get_shape_offset(swigCPtr, id);
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

  public void tile_set_shape(int id, Shape2D shape) {
    GodotEnginePINVOKE.TileSet_tile_set_shape(swigCPtr, id, Shape2D.getCPtr(shape));
  }

  public Shape2D tile_get_shape(int id) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileSet_tile_get_shape(swigCPtr, id);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Shape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Shape2D;
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

  public void tile_set_navigation_polygon(int id, NavigationPolygon navigation_polygon) {
    GodotEnginePINVOKE.TileSet_tile_set_navigation_polygon(swigCPtr, id, NavigationPolygon.getCPtr(navigation_polygon));
  }

  public NavigationPolygon tile_get_navigation_polygon(int id) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileSet_tile_get_navigation_polygon(swigCPtr, id);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    NavigationPolygon ret = InternalHelpers.UnmanagedGetManaged(cPtr) as NavigationPolygon;
    return ret;
}

  public void tile_set_navigation_polygon_offset(int id, Vector2 navigation_polygon_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_navigation_polygon_offset(swigCPtr, id, ref navigation_polygon_offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_navigation_polygon_offset(int id) {
    Vector2 ret = GodotEnginePINVOKE.TileSet_tile_get_navigation_polygon_offset(swigCPtr, id);
    return ret;
}

  public void tile_set_light_occluder(int id, OccluderPolygon2D light_occluder) {
    GodotEnginePINVOKE.TileSet_tile_set_light_occluder(swigCPtr, id, OccluderPolygon2D.getCPtr(light_occluder));
  }

  public OccluderPolygon2D tile_get_light_occluder(int id) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileSet_tile_get_light_occluder(swigCPtr, id);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    OccluderPolygon2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as OccluderPolygon2D;
    return ret;
}

  public void tile_set_occluder_offset(int id, Vector2 occluder_offset) {
    GodotEnginePINVOKE.TileSet_tile_set_occluder_offset(swigCPtr, id, ref occluder_offset);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 tile_get_occluder_offset(int id) {
    Vector2 ret = GodotEnginePINVOKE.TileSet_tile_get_occluder_offset(swigCPtr, id);
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

}

}
