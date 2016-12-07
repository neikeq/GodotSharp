using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Node for 2D tile-based games. Tilemaps use a [TileSet] which contain a list of tiles (textures, their rect and a collision) and are used to create complex grid-based maps.
    /// To optimize drawing and culling (sort of like [GridMap]), you can specify a quadrant size, so chunks of the map will be batched together at drawing time.
    /// </summary>
    public class TileMap : Node2D
    {
        /// <summary>
        /// Returned when a cell doesn't exist.
        /// </summary>
        public const int INVALID_CELL = -1;
        /// <summary>
        /// Orthogonal orientation mode.
        /// </summary>
        public const int MODE_SQUARE = 0;
        /// <summary>
        /// Isometric orientation mode.
        /// </summary>
        public const int MODE_ISOMETRIC = 1;
        /// <summary>
        /// Custom orientation mode.
        /// </summary>
        public const int MODE_CUSTOM = 2;
        /// <summary>
        /// Half offset on the X coordinate.
        /// </summary>
        public const int HALF_OFFSET_X = 0;
        /// <summary>
        /// Half offset on the Y coordinate.
        /// </summary>
        public const int HALF_OFFSET_Y = 1;
        /// <summary>
        /// Half offset disabled.
        /// </summary>
        public const int HALF_OFFSET_DISABLED = 2;
        /// <summary>
        /// Tile origin at its top-left corner.
        /// </summary>
        public const int TILE_ORIGIN_TOP_LEFT = 0;
        /// <summary>
        /// Tile origin at its center.
        /// </summary>
        public const int TILE_ORIGIN_CENTER = 1;
        public const int TILE_ORIGIN_BOTTOM_LEFT = 2;

        private const string nativeName = "TileMap";

        public TileMap() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TileMap_Ctor(this);
        }

        internal TileMap(bool memoryOwn) : base(memoryOwn) {}

        ~TileMap()
        {
            Dispose();
        }

        public override void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    if (memoryOwn)
                    {
                        memoryOwn = false;
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tileset");

        /// <summary>
        /// Set the current tileset.
        /// </summary>
        public void set_tileset(TileSet tileset)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(tileset));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tileset");

        /// <summary>
        /// Return the current tileset.
        /// </summary>
        public TileSet get_tileset()
        {
            return NativeCalls.godot_icall_0_487(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        /// <summary>
        /// Set the orientation mode as square, isometric or custom (use MODE_* constants as argument).
        /// </summary>
        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        /// <summary>
        /// Return the orientation mode.
        /// </summary>
        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_half_offset");

        /// <summary>
        /// Set an half offset on the X coordinate, Y coordinate, or none (use HALF_OFFSET_* constants as argument).
        /// Half offset sets every other tile off by a half tile size in the specified direction.
        /// </summary>
        public void set_half_offset(int half_offset)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), half_offset);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_half_offset");

        /// <summary>
        /// Return the current half offset configuration.
        /// </summary>
        public int get_half_offset()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_transform");

        /// <summary>
        /// Set custom transform matrix, to use in combination with the custom orientation mode.
        /// </summary>
        public void set_custom_transform(Matrix32 custom_transform)
        {
            NativeCalls.godot_icall_1_140(method_bind_6, Object.GetPtr(this), ref custom_transform);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_transform");

        /// <summary>
        /// Return the custom transform matrix.
        /// </summary>
        public Matrix32 get_custom_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_7, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cell_size");

        /// <summary>
        /// Set the cell size.
        /// </summary>
        public void set_cell_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_8, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cell_size");

        /// <summary>
        /// Return the cell size.
        /// </summary>
        public Vector2 get_cell_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_9, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_quadrant_size");

        /// <summary>
        /// Set the quadrant size, this optimizes drawing by batching chunks of map at draw/cull time.
        /// Allowed values are integers ranging from 1 to 128.
        /// </summary>
        public void set_quadrant_size(int size)
        {
            NativeCalls.godot_icall_1_4(method_bind_10, Object.GetPtr(this), size);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_quadrant_size");

        /// <summary>
        /// Return the quadrant size.
        /// </summary>
        public int get_quadrant_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tile_origin");

        /// <summary>
        /// Set the tile origin to the tile center or its top-left corner (use TILE_ORIGIN_* constants as argument).
        /// </summary>
        public void set_tile_origin(int origin)
        {
            NativeCalls.godot_icall_1_4(method_bind_12, Object.GetPtr(this), origin);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tile_origin");

        /// <summary>
        /// Return the tile origin configuration.
        /// </summary>
        public int get_tile_origin()
        {
            return NativeCalls.godot_icall_0_0(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_center_x");

        /// <summary>
        /// Set tiles to be centered in x coordinate. (by default this is false and they are drawn from upper left cell corner).
        /// </summary>
        public void set_center_x(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_center_x");

        /// <summary>
        /// Return true if tiles are to be centered in x coordinate (by default this is false and they are drawn from upper left cell corner).
        /// </summary>
        public bool get_center_x()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_center_y");

        /// <summary>
        /// Set tiles to be centered in y coordinate. (by default this is false and they are drawn from upper left cell corner).
        /// </summary>
        public void set_center_y(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_center_y");

        /// <summary>
        /// Return true if tiles are to be centered in y coordinate (by default this is false and they are drawn from upper left cell corner).
        /// </summary>
        public bool get_center_y()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_y_sort_mode");

        /// <summary>
        /// Set the Y sort mode. Enabled Y sort mode means that children of the tilemap will be drawn in the order defined by their Y coordinate.
        /// A tile with a higher Y coordinate will therefore be drawn later, potentially covering up the tile(s) above it if its sprite is higher than its cell size.
        /// </summary>
        public void set_y_sort_mode(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_18, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_y_sort_mode_enabled");

        /// <summary>
        /// Return the Y sort mode.
        /// </summary>
        public bool is_y_sort_mode_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_use_kinematic");

        /// <summary>
        /// Set the tilemap to handle collisions as a kinematic body (enabled) or a static body (disabled).
        /// </summary>
        public void set_collision_use_kinematic(bool use_kinematic)
        {
            NativeCalls.godot_icall_1_13(method_bind_20, Object.GetPtr(this), use_kinematic);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_use_kinematic");

        /// <summary>
        /// Return whether the tilemap handles collisions as a kinematic body.
        /// </summary>
        public bool get_collision_use_kinematic()
        {
            return NativeCalls.godot_icall_0_14(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_layer");

        /// <summary>
        /// Set the collision layer.
        /// Layers are referenced by binary indexes, so allowable values to describe the 20 available layers range from 0 to 2^20-1.
        /// </summary>
        public void set_collision_layer(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_22, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_layer");

        /// <summary>
        /// Return the collision layer.
        /// </summary>
        public int get_collision_layer()
        {
            return NativeCalls.godot_icall_0_0(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask");

        /// <summary>
        /// Set the collision masks.
        /// Masks are referenced by binary indexes, so allowable values to describe the 20 available masks range from 0 to 2^20-1.
        /// </summary>
        public void set_collision_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_24, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask");

        /// <summary>
        /// Return the collision mask.
        /// </summary>
        public int get_collision_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_friction");

        /// <summary>
        /// Set the collision friction parameter. Allowable values range from 0 to 1.
        /// </summary>
        public void set_collision_friction(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_26, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_friction");

        /// <summary>
        /// Return the collision friction parameter.
        /// </summary>
        public float get_collision_friction()
        {
            return NativeCalls.godot_icall_0_46(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_bounce");

        /// <summary>
        /// Set the collision bounce parameter. Allowable values range from 0 to 1.
        /// </summary>
        public void set_collision_bounce(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_28, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_bounce");

        /// <summary>
        /// Return the collision bounce parameter.
        /// </summary>
        public float get_collision_bounce()
        {
            return NativeCalls.godot_icall_0_46(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_occluder_light_mask");

        public void set_occluder_light_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_30, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_occluder_light_mask");

        public int get_occluder_light_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cell");

        /// <summary>
        /// Set the tile index for the cell referenced by its grid-based X and Y coordinates.
        /// A tile index of -1 clears the cell.
        /// Optionally, the tile can also be flipped over the X and Y coordinates or transposed.
        /// </summary>
        public void set_cell(int x, int y, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false)
        {
            NativeCalls.godot_icall_6_488(method_bind_32, Object.GetPtr(this), x, y, tile, flip_x, flip_y, transpose);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cellv");

        /// <summary>
        /// Set the tile index for the cell referenced by a Vector2 of grid-based coordinates.
        /// A tile index of -1 clears the cell.
        /// Optionally, the tile can also be flipped over the X and Y axes or transposed.
        /// </summary>
        public void set_cellv(Vector2 pos, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false)
        {
            NativeCalls.godot_icall_5_489(method_bind_33, Object.GetPtr(this), ref pos, tile, flip_x, flip_y, transpose);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cell");

        /// <summary>
        /// Return the tile index of the referenced cell.
        /// </summary>
        public int get_cell(int x, int y)
        {
            return NativeCalls.godot_icall_2_27(method_bind_34, Object.GetPtr(this), x, y);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cellv");

        /// <summary>
        /// Return the tile index of the cell referenced by a Vector2.
        /// </summary>
        public int get_cellv(Vector2 pos)
        {
            return NativeCalls.godot_icall_1_185(method_bind_35, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_cell_x_flipped");

        /// <summary>
        /// Return whether the referenced cell is flipped over the X axis.
        /// </summary>
        public bool is_cell_x_flipped(int x, int y)
        {
            return NativeCalls.godot_icall_2_6(method_bind_36, Object.GetPtr(this), x, y);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_cell_y_flipped");

        /// <summary>
        /// Return whether the referenced cell is flipped over the Y axis.
        /// </summary>
        public bool is_cell_y_flipped(int x, int y)
        {
            return NativeCalls.godot_icall_2_6(method_bind_37, Object.GetPtr(this), x, y);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_cell_transposed");

        /// <summary>
        /// Return whether the referenced cell is transposed, i.e. the X and Y axes are swapped (mirroring with regard to the (1,1) vector).
        /// </summary>
        public bool is_cell_transposed(int x, int y)
        {
            return NativeCalls.godot_icall_2_6(method_bind_38, Object.GetPtr(this), x, y);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear all cells.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_39, Object.GetPtr(this));
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_used_cells");

        /// <summary>
        /// Return an array of all cells containing a tile from the tileset (i.e. a tile index different from -1).
        /// </summary>
        public List<object> get_used_cells()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_40, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "map_to_world");

        /// <summary>
        /// Return the absolute world position corresponding to the tilemap (grid-based) coordinates given as an argument.
        /// Optionally, the tilemap's potential half offset can be ignored.
        /// </summary>
        public Vector2 map_to_world(Vector2 mappos, bool ignore_half_ofs = false)
        {
            object ret = NativeCalls.godot_icall_2_490(method_bind_41, Object.GetPtr(this), ref mappos, ignore_half_ofs);
            return (Vector2)ret;
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "world_to_map");

        /// <summary>
        /// Return the tilemap (grid-based) coordinates corresponding to the absolute world position given as an argument.
        /// </summary>
        public Vector2 world_to_map(Vector2 worldpos)
        {
            object ret = NativeCalls.godot_icall_1_143(method_bind_42, Object.GetPtr(this), ref worldpos);
            return (Vector2)ret;
        }
    }
}
