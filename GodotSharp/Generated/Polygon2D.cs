using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// A Polygon2D is defined by a set of n vertices connected together by line segments, meaning that the vertex 1 will be connected with vertex 2, vertex 2 with vertex 3 ..., vertex n-1 with vertex n and vertex n with vertex 1 in order to close the loop and define a polygon.
    /// </summary>
    public class Polygon2D : Node2D
    {
        private const string nativeName = "Polygon2D";

        public Polygon2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Polygon2D_Ctor(this);
        }

        internal Polygon2D(bool memoryOwn) : base(memoryOwn) {}

        ~Polygon2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_polygon");

        /// <summary>
        /// Define the set of vertices that will represent the polygon.
        /// </summary>
        public void set_polygon(List<Vector2> polygon)
        {
            NativeCalls.godot_icall_1_156(method_bind_0, Object.GetPtr(this), polygon.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_polygon");

        /// <summary>
        /// Return the set of vertices that defines this polygon.
        /// </summary>
        public List<Vector2> get_polygon()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_1, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_uv");

        /// <summary>
        /// Set the texture coordinates for every vertex of the polygon. There should be one uv vertex for every vertex in the polygon. If there are less, the undefined ones will be assumed to be (0,0). Extra uv vertices are ignored.
        /// </summary>
        public void set_uv(List<Vector2> uv)
        {
            NativeCalls.godot_icall_1_156(method_bind_2, Object.GetPtr(this), uv.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_uv");

        /// <summary>
        /// Return the texture coordinates associated with every vertex of the polygon.
        /// </summary>
        public List<Vector2> get_uv()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_3, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Set the polygon fill color. If the polygon has a texture defined, the defined texture will be multiplied by the polygon fill color. This, also, is the default color for those vertices that are not defined by [method get_vertex_colors].
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_4, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Return the polygon fill color.
        /// </summary>
        public Color get_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_5, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_vertex_colors");

        /// <summary>
        /// Set the color for each vertex of the polygon. There should be one color for every vertex in the polygon. If there are less, the undefined ones will be assumed to be [method get_color]. Extra color entries are ignored.
        /// Colors are interpolated between vertices, resulting in smooth gradients when they differ.
        /// </summary>
        public void set_vertex_colors(List<Color> vertex_colors)
        {
            NativeCalls.godot_icall_1_165(method_bind_6, Object.GetPtr(this), vertex_colors.ToArray());
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_vertex_colors");

        /// <summary>
        /// Return the list of vertex colors.
        /// </summary>
        public List<Color> get_vertex_colors()
        {
            Color[] ret = NativeCalls.godot_icall_0_166(method_bind_7, Object.GetPtr(this));
            return new List<Color>(ret);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        /// <summary>
        /// Set the polygon texture.
        /// </summary>
        public void set_texture(Object texture)
        {
            NativeCalls.godot_icall_1_20(method_bind_8, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        /// <summary>
        /// Return the polygon texture
        /// </summary>
        public Object get_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_offset");

        /// <summary>
        /// Set the offset of the polygon texture. Initially the texture will appear anchored to the polygon position, the offset is used to move the texture location away from that point (notice that the texture origin is set to its top left corner, so when offset is 0,0 the top left corner of the texture is at the polygon position), for example setting the offset to 10, 10 will move the texture 10 units to the left and 10 units to the top.
        /// </summary>
        public void set_texture_offset(Vector2 texture_offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_10, Object.GetPtr(this), ref texture_offset);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_offset");

        /// <summary>
        /// Return the polygon texture offset.
        /// </summary>
        public Vector2 get_texture_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_11, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_rotation");

        /// <summary>
        /// Set the amount of rotation of the polygon texture, [code]texture_rotation[/code] is specified in radians and clockwise rotation.
        /// </summary>
        public void set_texture_rotation(float texture_rotation)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), texture_rotation);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_rotation");

        /// <summary>
        /// Return the rotation in radians of the texture polygon.
        /// </summary>
        public float get_texture_rotation()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_scale");

        /// <summary>
        /// Set the value that will multiply the uv coordinates ([method get_uv]) when applying the texture. Larger values make the texture smaller, and vice versa.
        /// </summary>
        public void set_texture_scale(Vector2 texture_scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_14, Object.GetPtr(this), ref texture_scale);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_scale");

        /// <summary>
        /// Return the uv coordinate multiplier.
        /// </summary>
        public Vector2 get_texture_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_15, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_invert");

        /// <summary>
        /// Set the polygon as the defined polygon bounding box minus the defined polygon (the defined polygon will appear as a hole on the square that contains the defined polygon).
        /// </summary>
        public void set_invert(bool invert)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), invert);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_invert");

        /// <summary>
        /// Return whether this polygon is inverted or not.
        /// </summary>
        public bool get_invert()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_invert_border");

        /// <summary>
        /// Add extra padding around the bounding box, making it bigger. Too small a value can make the polygon triangulate strangely, due to numerical imprecision.
        /// </summary>
        public void set_invert_border(float invert_border)
        {
            NativeCalls.godot_icall_1_45(method_bind_18, Object.GetPtr(this), invert_border);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_invert_border");

        /// <summary>
        /// Return the added padding around the bounding box.
        /// </summary>
        public float get_invert_border()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the an offset that will be added to the vertices' position. E.g. if the offset is set to (10,10) then all the polygon points will move 10 units to the right and 10 units to the bottom.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_20, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the offset for the polygon vertices.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_21, Object.GetPtr(this));
            return (Vector2)ret;
        }
    }
}
