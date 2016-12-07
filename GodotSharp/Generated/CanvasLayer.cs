using System;

namespace GodotEngine
{
    /// <summary>
    /// Canvas Item layer. [CanvasItem] nodes that are direct or indirect children of a [CanvasLayer] will be drawn in that layer. The layer is a numeric index that defines the draw order. The default 2D scene renders with index 0, so a [CanvasLayer] with index -1 will be drawn below, and one with index 1 will be drawn above. This is very useful for HUDs (in layer 1+ or above), or backgrounds (in layer -1 or below).
    /// </summary>
    public class CanvasLayer : Node
    {
        private const string nativeName = "CanvasLayer";

        public CanvasLayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CanvasLayer_Ctor(this);
        }

        internal CanvasLayer(bool memoryOwn) : base(memoryOwn) {}

        ~CanvasLayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer");

        /// <summary>
        /// Set the layer index, determines the draw order, a lower value will be below a higher one.
        /// </summary>
        public void set_layer(int layer)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), layer);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer");

        /// <summary>
        /// Return the layer index, determines the draw order, a lower value will be below a higher one.
        /// </summary>
        public int get_layer()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        /// <summary>
        /// Set the base transform for this layer.
        /// </summary>
        public void set_transform(Matrix32 transform)
        {
            NativeCalls.godot_icall_1_140(method_bind_2, Object.GetPtr(this), ref transform);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transform");

        /// <summary>
        /// Return the base transform for this layer.
        /// </summary>
        public Matrix32 get_transform()
        {
            object ret = NativeCalls.godot_icall_0_141(method_bind_3, Object.GetPtr(this));
            return (Matrix32)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the base offset for this layer (helper).
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the base offset for this layer (helper).
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotation");

        /// <summary>
        /// Set the base rotation for this layer (helper).
        /// </summary>
        public void set_rotation(float radians)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), radians);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rotation");

        /// <summary>
        /// Return the base rotation for this layer (helper).
        /// </summary>
        public float get_rotation()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotationd");

        /// <summary>
        /// Set rotation of the layer in degree.
        /// </summary>
        public void set_rotationd(float degrees)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), degrees);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rotationd");

        /// <summary>
        /// Get rotation of the layer in degree.
        /// </summary>
        public float get_rotationd()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scale");

        /// <summary>
        /// Set the base scale for this layer (helper).
        /// </summary>
        public void set_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_10, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scale");

        /// <summary>
        /// Return the base scale for this layer (helper).
        /// </summary>
        public Vector2 get_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_11, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_viewport");

        public void set_custom_viewport(Viewport viewport)
        {
            NativeCalls.godot_icall_1_20(method_bind_12, Object.GetPtr(this), Object.GetPtr(viewport));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_viewport");

        public Viewport get_custom_viewport()
        {
            return NativeCalls.godot_icall_0_124(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_world_2d");

        /// <summary>
        /// Return the [World2D] used by this layer.
        /// </summary>
        public World2D get_world_2d()
        {
            return NativeCalls.godot_icall_0_147(method_bind_14, Object.GetPtr(this));
        }
    }
}
