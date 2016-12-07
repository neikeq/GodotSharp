using System;

namespace GodotEngine
{
    /// <summary>
    /// A ParallaxBackground will use one or more [ParallaxLayer] nodes to create a parallax scrolling background. Each [ParallaxLayer] can be set to move at different speeds relative to the camera movement, this can be used to create an illusion of depth in a 2D game.
    /// </summary>
    public class ParallaxBackground : CanvasLayer
    {
        private const string nativeName = "ParallaxBackground";

        public ParallaxBackground() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ParallaxBackground_Ctor(this);
        }

        internal ParallaxBackground(bool memoryOwn) : base(memoryOwn) {}

        ~ParallaxBackground()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_offset");

        public void set_scroll_offset(Vector2 ofs)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref ofs);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scroll_offset");

        public Vector2 get_scroll_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_base_offset");

        /// <summary>
        /// Set the base offset in pixels of all children [ParallaxLayer] nodes.
        /// </summary>
        public void set_scroll_base_offset(Vector2 ofs)
        {
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref ofs);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scroll_base_offset");

        /// <summary>
        /// Return the base offset.
        /// </summary>
        public Vector2 get_scroll_base_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scroll_base_scale");

        /// <summary>
        /// Set the base motion scale of all children [ParallaxLayer] nodes.
        /// </summary>
        public void set_scroll_base_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scroll_base_scale");

        /// <summary>
        /// Return the base motion scale.
        /// </summary>
        public Vector2 get_scroll_base_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_limit_begin");

        /// <summary>
        /// Set the left and top limits in pixels for scrolling to begin. If the camera is outside of this limit the background will not continue to scroll. If an axis is greater than or equal to the corresponding axis of limit_end, then it will not limit scrolling for that axis.
        /// </summary>
        public void set_limit_begin(Vector2 ofs)
        {
            NativeCalls.godot_icall_1_23(method_bind_6, Object.GetPtr(this), ref ofs);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_limit_begin");

        /// <summary>
        /// Return the beginning limit.
        /// </summary>
        public Vector2 get_limit_begin()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_7, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_limit_end");

        /// <summary>
        /// Set the right and bottom limits in pixels for scrolling to end. If the camera is outside of this limit the background will not continue to scroll. If an axis is less than or equal to the corresponding axis of limit_begin, then it will not limit scrolling for that axis.
        /// </summary>
        public void set_limit_end(Vector2 ofs)
        {
            NativeCalls.godot_icall_1_23(method_bind_8, Object.GetPtr(this), ref ofs);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_limit_end");

        /// <summary>
        /// Return the ending limit.
        /// </summary>
        public Vector2 get_limit_end()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_9, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ignore_camera_zoom");

        /// <summary>
        /// Set to true for all child [ParallaxLayer] nodes to not be affected by the zoom level of the camera.
        /// </summary>
        public void set_ignore_camera_zoom(bool ignore)
        {
            NativeCalls.godot_icall_1_13(method_bind_10, Object.GetPtr(this), ignore);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_ignore_camera_zoom");

        /// <summary>
        /// Return ignoring camera zoom.
        /// </summary>
        public bool is_ignore_camera_zoom()
        {
            return NativeCalls.godot_icall_0_14(method_bind_11, Object.GetPtr(this));
        }
    }
}
