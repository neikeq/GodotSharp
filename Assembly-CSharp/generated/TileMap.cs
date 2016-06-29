/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class TileMap : Node2D {
  public static readonly int INVALID_CELL = -1;
  public static readonly int MODE_SQUARE = 0;
  public static readonly int MODE_ISOMETRIC = 1;
  public static readonly int MODE_CUSTOM = 2;
  public static readonly int HALF_OFFSET_X = 0;
  public static readonly int HALF_OFFSET_Y = 1;
  public static readonly int HALF_OFFSET_DISABLED = 2;
  public static readonly int TILE_ORIGIN_TOP_LEFT = 0;
  public static readonly int TILE_ORIGIN_CENTER = 1;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal TileMap(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.TileMap_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected TileMap(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.TileMap_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(TileMap obj) {
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



  public TileMap() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_TileMap());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_tileset(TileSet tileset) {
    GodotEnginePINVOKE.TileMap_set_tileset(swigCPtr, TileSet.getCPtr(tileset));
  }

  public TileSet get_tileset() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TileMap_get_tileset(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    TileSet ret = InternalHelpers.UnmanagedGetManaged(cPtr) as TileSet;
    return ret;
}

  public void set_mode(int mode) {
    GodotEnginePINVOKE.TileMap_set_mode(swigCPtr, mode);
  }

  public int get_mode() {
    int ret = GodotEnginePINVOKE.TileMap_get_mode(swigCPtr);
    return ret;
  }

  public void set_half_offset(int half_offset) {
    GodotEnginePINVOKE.TileMap_set_half_offset(swigCPtr, half_offset);
  }

  public int get_half_offset() {
    int ret = GodotEnginePINVOKE.TileMap_get_half_offset(swigCPtr);
    return ret;
  }

  public void set_custom_transform(Matrix32 custom_transform) {
    GodotEnginePINVOKE.TileMap_set_custom_transform(swigCPtr, ref custom_transform.elements);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Matrix32 get_custom_transform() {
    Matrix32 ret = new Matrix32(GodotEnginePINVOKE.TileMap_get_custom_transform(swigCPtr));
    return ret;
}

  public void set_cell_size(Vector2 size) {
    GodotEnginePINVOKE.TileMap_set_cell_size(swigCPtr, ref size);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_cell_size() {
    Vector2 ret = GodotEnginePINVOKE.TileMap_get_cell_size(swigCPtr);
    return ret;
}

  public void set_quadrant_size(int size) {
    GodotEnginePINVOKE.TileMap_set_quadrant_size(swigCPtr, size);
  }

  public int get_quadrant_size() {
    int ret = GodotEnginePINVOKE.TileMap_get_quadrant_size(swigCPtr);
    return ret;
  }

  public void set_tile_origin(int origin) {
    GodotEnginePINVOKE.TileMap_set_tile_origin(swigCPtr, origin);
  }

  public int get_tile_origin() {
    int ret = GodotEnginePINVOKE.TileMap_get_tile_origin(swigCPtr);
    return ret;
  }

  public void set_center_x(bool enable) {
    GodotEnginePINVOKE.TileMap_set_center_x(swigCPtr, enable);
  }

  public bool get_center_x() {
    bool ret = GodotEnginePINVOKE.TileMap_get_center_x(swigCPtr);
    return ret;
  }

  public void set_center_y(bool enable) {
    GodotEnginePINVOKE.TileMap_set_center_y(swigCPtr, enable);
  }

  public bool get_center_y() {
    bool ret = GodotEnginePINVOKE.TileMap_get_center_y(swigCPtr);
    return ret;
  }

  public void set_y_sort_mode(bool enable) {
    GodotEnginePINVOKE.TileMap_set_y_sort_mode(swigCPtr, enable);
  }

  public bool is_y_sort_mode_enabled() {
    bool ret = GodotEnginePINVOKE.TileMap_is_y_sort_mode_enabled(swigCPtr);
    return ret;
  }

  public void set_collision_use_kinematic(bool use_kinematic) {
    GodotEnginePINVOKE.TileMap_set_collision_use_kinematic(swigCPtr, use_kinematic);
  }

  public bool get_collision_use_kinematic() {
    bool ret = GodotEnginePINVOKE.TileMap_get_collision_use_kinematic(swigCPtr);
    return ret;
  }

  public void set_collision_layer(int mask) {
    GodotEnginePINVOKE.TileMap_set_collision_layer(swigCPtr, mask);
  }

  public int get_collision_layer() {
    int ret = GodotEnginePINVOKE.TileMap_get_collision_layer(swigCPtr);
    return ret;
  }

  public void set_collision_mask(int mask) {
    GodotEnginePINVOKE.TileMap_set_collision_mask(swigCPtr, mask);
  }

  public int get_collision_mask() {
    int ret = GodotEnginePINVOKE.TileMap_get_collision_mask(swigCPtr);
    return ret;
  }

  public void set_collision_friction(float value) {
    GodotEnginePINVOKE.TileMap_set_collision_friction(swigCPtr, value);
  }

  public float get_collision_friction() {
    float ret = GodotEnginePINVOKE.TileMap_get_collision_friction(swigCPtr);
    return ret;
  }

  public void set_collision_bounce(float value) {
    GodotEnginePINVOKE.TileMap_set_collision_bounce(swigCPtr, value);
  }

  public float get_collision_bounce() {
    float ret = GodotEnginePINVOKE.TileMap_get_collision_bounce(swigCPtr);
    return ret;
  }

  public void set_occluder_light_mask(int mask) {
    GodotEnginePINVOKE.TileMap_set_occluder_light_mask(swigCPtr, mask);
  }

  public int get_occluder_light_mask() {
    int ret = GodotEnginePINVOKE.TileMap_get_occluder_light_mask(swigCPtr);
    return ret;
  }

  public void set_cell(int x, int y, int tile, bool flip_x, bool flip_y, bool transpose) {
    GodotEnginePINVOKE.TileMap_set_cell__SWIG_0(swigCPtr, x, y, tile, flip_x, flip_y, transpose);
  }

  public void set_cell(int x, int y, int tile, bool flip_x, bool flip_y) {
    GodotEnginePINVOKE.TileMap_set_cell__SWIG_1(swigCPtr, x, y, tile, flip_x, flip_y);
  }

  public void set_cell(int x, int y, int tile, bool flip_x) {
    GodotEnginePINVOKE.TileMap_set_cell__SWIG_2(swigCPtr, x, y, tile, flip_x);
  }

  public void set_cell(int x, int y, int tile) {
    GodotEnginePINVOKE.TileMap_set_cell__SWIG_3(swigCPtr, x, y, tile);
  }

  public void set_cellv(Vector2 pos, int tile, bool flip_x, bool flip_y, bool transpose) {
    GodotEnginePINVOKE.TileMap_set_cellv__SWIG_0(swigCPtr, ref pos, tile, flip_x, flip_y, transpose);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_cellv(Vector2 pos, int tile, bool flip_x, bool flip_y) {
    GodotEnginePINVOKE.TileMap_set_cellv__SWIG_1(swigCPtr, ref pos, tile, flip_x, flip_y);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_cellv(Vector2 pos, int tile, bool flip_x) {
    GodotEnginePINVOKE.TileMap_set_cellv__SWIG_2(swigCPtr, ref pos, tile, flip_x);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_cellv(Vector2 pos, int tile) {
    GodotEnginePINVOKE.TileMap_set_cellv__SWIG_3(swigCPtr, ref pos, tile);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int get_cell(int x, int y) {
    int ret = GodotEnginePINVOKE.TileMap_get_cell(swigCPtr, x, y);
    return ret;
  }

  public int get_cellv(Vector2 pos) {
    int ret = GodotEnginePINVOKE.TileMap_get_cellv(swigCPtr, ref pos);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public bool is_cell_x_flipped(int x, int y) {
    bool ret = GodotEnginePINVOKE.TileMap_is_cell_x_flipped(swigCPtr, x, y);
    return ret;
  }

  public bool is_cell_y_flipped(int x, int y) {
    bool ret = GodotEnginePINVOKE.TileMap_is_cell_y_flipped(swigCPtr, x, y);
    return ret;
  }

  public bool is_cell_transposed(int x, int y) {
    bool ret = GodotEnginePINVOKE.TileMap_is_cell_transposed(swigCPtr, x, y);
    return ret;
  }

  public void clear() {
    GodotEnginePINVOKE.TileMap_clear(swigCPtr);
  }

  public SWIGTYPE_p_Array get_used_cells() {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.TileMap_get_used_cells(swigCPtr), true);
    return ret;
  }

  public Vector2 map_to_world(Vector2 mappos, bool ignore_half_ofs) {
    Vector2 ret = GodotEnginePINVOKE.TileMap_map_to_world__SWIG_0(swigCPtr, ref mappos, ignore_half_ofs);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
}

  public Vector2 map_to_world(Vector2 mappos) {
    Vector2 ret = GodotEnginePINVOKE.TileMap_map_to_world__SWIG_1(swigCPtr, ref mappos);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
}

  public Vector2 world_to_map(Vector2 worldpos) {
    Vector2 ret = GodotEnginePINVOKE.TileMap_world_to_map(swigCPtr, ref worldpos);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
}

}

}
