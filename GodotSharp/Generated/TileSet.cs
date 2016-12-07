using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// A TileSet is a library of tiles for a [TileMap]. It contains a list of tiles, each consisting of a sprite and optional collision shapes.
    /// Tiles are referenced by a unique integer ID.
    /// </summary>
    public class TileSet : Resource
    {
        private const string nativeName = "TileSet";

        public TileSet() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_TileSet_Ctor(this);
        }

        internal TileSet(bool memoryOwn) : base(memoryOwn) {}

        ~TileSet()
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
                    NativeCalls.godot_icall_TileSet_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "create_tile");

        /// <summary>
        /// Create a new tile which will be referenced by the given ID.
        /// </summary>
        public void create_tile(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_name");

        /// <summary>
        /// Set the name of the tile, for descriptive purposes.
        /// </summary>
        public void tile_set_name(int id, string name)
        {
            NativeCalls.godot_icall_2_61(method_bind_1, Object.GetPtr(this), id, name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_name");

        /// <summary>
        /// Return the name of the tile.
        /// </summary>
        public string tile_get_name(int id)
        {
            return NativeCalls.godot_icall_1_116(method_bind_2, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_texture");

        /// <summary>
        /// Set the texture of the tile.
        /// </summary>
        public void tile_set_texture(int id, Texture texture)
        {
            NativeCalls.godot_icall_2_115(method_bind_3, Object.GetPtr(this), id, Object.GetPtr(texture));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_texture");

        /// <summary>
        /// Return the texture of the tile.
        /// </summary>
        public Texture tile_get_texture(int id)
        {
            return NativeCalls.godot_icall_1_112(method_bind_4, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_material");

        /// <summary>
        /// Set the material of the tile.
        /// </summary>
        public void tile_set_material(int id, CanvasItemMaterial material)
        {
            NativeCalls.godot_icall_2_115(method_bind_5, Object.GetPtr(this), id, Object.GetPtr(material));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_material");

        /// <summary>
        /// Return the material of the tile.
        /// </summary>
        public CanvasItemMaterial tile_get_material(int id)
        {
            return NativeCalls.godot_icall_1_491(method_bind_6, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_texture_offset");

        /// <summary>
        /// Set the texture offset of the tile.
        /// </summary>
        public void tile_set_texture_offset(int id, Vector2 texture_offset)
        {
            NativeCalls.godot_icall_2_190(method_bind_7, Object.GetPtr(this), id, ref texture_offset);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_texture_offset");

        /// <summary>
        /// Return the texture offset of the tile.
        /// </summary>
        public Vector2 tile_get_texture_offset(int id)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_8, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_shape_offset");

        /// <summary>
        /// Set the shape offset of the tile.
        /// </summary>
        public void tile_set_shape_offset(int id, Vector2 shape_offset)
        {
            NativeCalls.godot_icall_2_190(method_bind_9, Object.GetPtr(this), id, ref shape_offset);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_shape_offset");

        /// <summary>
        /// Return the shape offset of the tile.
        /// </summary>
        public Vector2 tile_get_shape_offset(int id)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_10, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_region");

        /// <summary>
        /// Set the tile sub-region in the texture. This is common in texture atlases.
        /// </summary>
        public void tile_set_region(int id, Rect2 region)
        {
            NativeCalls.godot_icall_2_267(method_bind_11, Object.GetPtr(this), id, ref region);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_region");

        /// <summary>
        /// Return the tile sub-region in the texture.
        /// </summary>
        public Rect2 tile_get_region(int id)
        {
            object ret = NativeCalls.godot_icall_1_268(method_bind_12, Object.GetPtr(this), id);
            return (Rect2)ret;
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_shape");

        /// <summary>
        /// Set a shape for the tile, enabling physics to collide with it.
        /// </summary>
        public void tile_set_shape(int id, Shape2D shape)
        {
            NativeCalls.godot_icall_2_115(method_bind_13, Object.GetPtr(this), id, Object.GetPtr(shape));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_shape");

        /// <summary>
        /// Return the shape of the tile.
        /// </summary>
        public Shape2D tile_get_shape(int id)
        {
            return NativeCalls.godot_icall_1_154(method_bind_14, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_shapes");

        /// <summary>
        /// Set an array of shapes for the tile, enabling physics to collide with it.
        /// </summary>
        public void tile_set_shapes(int id, List<object> shapes)
        {
            NativeCalls.godot_icall_2_492(method_bind_15, Object.GetPtr(this), id, shapes.ToArray());
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_shapes");

        /// <summary>
        /// Return the array of shapes of the tile.
        /// </summary>
        public List<object> tile_get_shapes(int id)
        {
            object[] ret = NativeCalls.godot_icall_1_421(method_bind_16, Object.GetPtr(this), id);
            return new List<object>(ret);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_navigation_polygon");

        /// <summary>
        /// Set a navigation polygon for the tile.
        /// </summary>
        public void tile_set_navigation_polygon(int id, NavigationPolygon navigation_polygon)
        {
            NativeCalls.godot_icall_2_115(method_bind_17, Object.GetPtr(this), id, Object.GetPtr(navigation_polygon));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_navigation_polygon");

        /// <summary>
        /// Return the navigation polygon of the tile.
        /// </summary>
        public NavigationPolygon tile_get_navigation_polygon(int id)
        {
            return NativeCalls.godot_icall_1_493(method_bind_18, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_navigation_polygon_offset");

        /// <summary>
        /// Set an offset for the tile's navigation polygon.
        /// </summary>
        public void tile_set_navigation_polygon_offset(int id, Vector2 navigation_polygon_offset)
        {
            NativeCalls.godot_icall_2_190(method_bind_19, Object.GetPtr(this), id, ref navigation_polygon_offset);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_navigation_polygon_offset");

        /// <summary>
        /// Return the offset of the tile's navigation polygon.
        /// </summary>
        public Vector2 tile_get_navigation_polygon_offset(int id)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_20, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_light_occluder");

        /// <summary>
        /// Set a light occluder for the tile.
        /// </summary>
        public void tile_set_light_occluder(int id, OccluderPolygon2D light_occluder)
        {
            NativeCalls.godot_icall_2_115(method_bind_21, Object.GetPtr(this), id, Object.GetPtr(light_occluder));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_light_occluder");

        /// <summary>
        /// Return the light occluder of the tile.
        /// </summary>
        public OccluderPolygon2D tile_get_light_occluder(int id)
        {
            return NativeCalls.godot_icall_1_494(method_bind_22, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_set_occluder_offset");

        /// <summary>
        /// Set an offset for the tile's light occluder.
        /// </summary>
        public void tile_set_occluder_offset(int id, Vector2 occluder_offset)
        {
            NativeCalls.godot_icall_2_190(method_bind_23, Object.GetPtr(this), id, ref occluder_offset);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "tile_get_occluder_offset");

        /// <summary>
        /// Return the offset of the tile's light occluder.
        /// </summary>
        public Vector2 tile_get_occluder_offset(int id)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_24, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_tile");

        /// <summary>
        /// Remove the tile referenced by the given ID.
        /// </summary>
        public void remove_tile(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_25, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear all tiles.
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_last_unused_tile_id");

        /// <summary>
        /// Return the ID following the last currently used ID, useful when creating a new tile.
        /// </summary>
        public int get_last_unused_tile_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_tile_by_name");

        /// <summary>
        /// Find the first tile matching the given name.
        /// </summary>
        public int find_tile_by_name(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_28, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tiles_ids");

        /// <summary>
        /// Return an array of all currently used tile IDs.
        /// </summary>
        public List<object> get_tiles_ids()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_29, Object.GetPtr(this));
            return new List<object>(ret);
        }
    }
}
