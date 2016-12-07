using System;

namespace GodotEngine
{
    /// <summary>
    /// Camera node for 2D scenes. It forces the screen (current layer) to scroll following this node. This makes it easier (and faster) to program scrollable scenes than manually changing the position of [CanvasItem] based nodes.
    /// This node is intended to be a simple helper get get things going quickly and it may happen often that more functionality is desired to change how the camera works. To make your own custom camera node, simply inherit from [Node2D] and change the transform of the canvas by calling get_viewport().set_canvas_transform(m) in [Viewport].
    /// </summary>
    public class Camera2D : Node2D
    {
        public const int ANCHOR_MODE_DRAG_CENTER = 1;
        public const int ANCHOR_MODE_FIXED_TOP_LEFT = 0;

        private const string nativeName = "Camera2D";

        public Camera2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Camera2D_Ctor(this);
        }

        internal Camera2D(bool memoryOwn) : base(memoryOwn) {}

        ~Camera2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the scroll offset. Useful for looking around or camera shake animations.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the scroll offset.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_anchor_mode");

        public void set_anchor_mode(int anchor_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), anchor_mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_anchor_mode");

        public int get_anchor_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotating");

        public void set_rotating(bool rotating)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), rotating);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_rotating");

        public bool is_rotating()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_current");

        /// <summary>
        /// Make this the current 2D camera for the scene (viewport and layer), in case there's many cameras in the scene.
        /// </summary>
        public void make_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_current");

        public void clear_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_current");

        /// <summary>
        /// Return true of this is the current camera (see [method make_current]).
        /// </summary>
        public bool is_current()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_limit");

        /// <summary>
        /// Set the scrolling limit in pixels.
        /// </summary>
        public void set_limit(int margin, int limit)
        {
            NativeCalls.godot_icall_2_5(method_bind_9, Object.GetPtr(this), margin, limit);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_limit");

        /// <summary>
        /// Return the scrolling limit in pixels.
        /// </summary>
        public int get_limit(int margin)
        {
            return NativeCalls.godot_icall_1_28(method_bind_10, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_limit_smoothing_enabled");

        /// <summary>
        /// Smooth camera when reaching camera limits.
        /// This requires camera smoothing being enabled to have a noticeable effect.
        /// </summary>
        public void set_limit_smoothing_enabled(bool limit_smoothing_enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_11, Object.GetPtr(this), limit_smoothing_enabled);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_limit_smoothing_enabled");

        public bool is_limit_smoothing_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_drag_enabled");

        public void set_v_drag_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_v_drag_enabled");

        public bool is_v_drag_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_drag_enabled");

        public void set_h_drag_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_15, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_h_drag_enabled");

        public bool is_h_drag_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_offset");

        public void set_v_offset(float ofs)
        {
            NativeCalls.godot_icall_1_45(method_bind_17, Object.GetPtr(this), ofs);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_offset");

        public float get_v_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_offset");

        public void set_h_offset(float ofs)
        {
            NativeCalls.godot_icall_1_45(method_bind_19, Object.GetPtr(this), ofs);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_offset");

        public float get_h_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_drag_margin");

        /// <summary>
        /// Set the margins needed to drag the camera (relative to the screen size). Margin uses the MARGIN_* enum. Drag margins of 0,0,0,0 will keep the camera at the center of the screen, while drag margins of 1,1,1,1 will only move when the camera is at the edges.
        /// </summary>
        public void set_drag_margin(int margin, float drag_margin)
        {
            NativeCalls.godot_icall_2_36(method_bind_21, Object.GetPtr(this), margin, drag_margin);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_drag_margin");

        /// <summary>
        /// Return the margins needed to drag the camera (see [method set_drag_margin]).
        /// </summary>
        public float get_drag_margin(int margin)
        {
            return NativeCalls.godot_icall_1_3(method_bind_22, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_camera_pos");

        /// <summary>
        /// Return the camera position.
        /// </summary>
        public Vector2 get_camera_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_23, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_camera_screen_center");

        public Vector2 get_camera_screen_center()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_24, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_zoom");

        public void set_zoom(Vector2 zoom)
        {
            NativeCalls.godot_icall_1_23(method_bind_25, Object.GetPtr(this), ref zoom);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_zoom");

        public Vector2 get_zoom()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_26, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_custom_viewport");

        public void set_custom_viewport(Viewport viewport)
        {
            NativeCalls.godot_icall_1_20(method_bind_27, Object.GetPtr(this), Object.GetPtr(viewport));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_custom_viewport");

        public Viewport get_custom_viewport()
        {
            return NativeCalls.godot_icall_0_124(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_follow_smoothing");

        public void set_follow_smoothing(float follow_smoothing)
        {
            NativeCalls.godot_icall_1_45(method_bind_29, Object.GetPtr(this), follow_smoothing);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_follow_smoothing");

        public float get_follow_smoothing()
        {
            return NativeCalls.godot_icall_0_46(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enable_follow_smoothing");

        public void set_enable_follow_smoothing(bool follow_smoothing)
        {
            NativeCalls.godot_icall_1_13(method_bind_31, Object.GetPtr(this), follow_smoothing);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_follow_smoothing_enabled");

        public bool is_follow_smoothing_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "force_update_scroll");

        /// <summary>
        /// Force the camera to update scroll immediately.
        /// </summary>
        public void force_update_scroll()
        {
            NativeCalls.godot_icall_0_7(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reset_smoothing");

        /// <summary>
        /// Set the camera's position immediately to its current smoothing destination.
        /// This has no effect if smoothing is disabled.
        /// </summary>
        public void reset_smoothing()
        {
            NativeCalls.godot_icall_0_7(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "align");

        /// <summary>
        /// Align the camera to the tracked node
        /// </summary>
        public void align()
        {
            NativeCalls.godot_icall_0_7(method_bind_35, Object.GetPtr(this));
        }
    }
}
