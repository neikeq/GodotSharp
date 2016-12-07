using System;

namespace GodotEngine
{
    /// <summary>
    /// Used to display a [Viewport] node at some position in the world, without having to mess with [RenderTargetTexture]s.
    /// </summary>
    public class ViewportSprite : Node2D
    {
        private const string nativeName = "ViewportSprite";

        public ViewportSprite() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ViewportSprite_Ctor(this);
        }

        internal ViewportSprite(bool memoryOwn) : base(memoryOwn) {}

        ~ViewportSprite()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_viewport_path");

        /// <summary>
        /// Set the path to the shown [Viewport] node.
        /// </summary>
        public void set_viewport_path(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_viewport_path");

        /// <summary>
        /// Return the path to the shown [Viewport] node.
        /// </summary>
        public NodePath get_viewport_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_centered");

        /// <summary>
        /// Set whether the viewport's texture should be centered on the origin.
        /// </summary>
        public void set_centered(bool centered)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), centered);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_centered");

        /// <summary>
        /// Return whether the viewport's texture is centered on the origin.
        /// </summary>
        public bool is_centered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the offset to the origin of the texture.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// get the offset to the origin of the texture.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        /// <summary>
        /// Set color modulation for the texture. All texture pixels are multiplied by this color. Color may contain rgb values above 1 to achieve a highlight effect.
        /// </summary>
        public void set_modulate(Color modulate)
        {
            NativeCalls.godot_icall_1_25(method_bind_6, Object.GetPtr(this), ref modulate);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        /// <summary>
        /// Get color modulation for the texture. All texture pixels are multiplied by this color.
        /// </summary>
        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_7, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
