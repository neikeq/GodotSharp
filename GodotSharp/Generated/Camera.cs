using System;

namespace GodotEngine
{
    /// <summary>
    /// Camera is a special node that displays what is visible from its current location. Cameras register themselves in the nearest [Viewport] node (when ascending the tree). Only one camera can be active per viewport. If no viewport is available ascending the tree, the Camera will register in the global viewport. In other words, a Camera just provides [i]3D[/i] display capabilities to a [Viewport], and, without one, a scene registered in that [Viewport] (or higher viewports) can't be displayed.
    /// </summary>
    public class Camera : Spatial
    {
        /// <summary>
        /// Perspective Projection (object's size on the screen becomes smaller when far away).
        /// </summary>
        public const int PROJECTION_PERSPECTIVE = 0;
        /// <summary>
        /// Orthogonal Projection (objects remain the same size on the screen no matter how far away they are).
        /// </summary>
        public const int PROJECTION_ORTHOGONAL = 1;
        public const int KEEP_WIDTH = 0;
        public const int KEEP_HEIGHT = 1;

        private const string nativeName = "Camera";

        public Camera() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Camera_Ctor(this);
        }

        internal Camera(bool memoryOwn) : base(memoryOwn) {}

        ~Camera()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "project_ray_normal");

        /// <summary>
        /// Return a normal vector in worldspace, that is the result of projecting a point on the [Viewport] rectangle by the camera projection. This is useful for casting rays in the form of (origin,normal) for object intersection or picking.
        /// </summary>
        public Vector3 project_ray_normal(Vector2 screen_point)
        {
            object ret = NativeCalls.godot_icall_1_118(method_bind_0, Object.GetPtr(this), ref screen_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "project_local_ray_normal");

        public Vector3 project_local_ray_normal(Vector2 screen_point)
        {
            object ret = NativeCalls.godot_icall_1_118(method_bind_1, Object.GetPtr(this), ref screen_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "project_ray_origin");

        /// <summary>
        /// Return a 3D position in worldspace, that is the result of projecting a point on the [Viewport] rectangle by the camera projection. This is useful for casting rays in the form of (origin,normal) for object intersection or picking.
        /// </summary>
        public Vector3 project_ray_origin(Vector2 screen_point)
        {
            object ret = NativeCalls.godot_icall_1_118(method_bind_2, Object.GetPtr(this), ref screen_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unproject_position");

        /// <summary>
        /// Return how a 3D point in worldspace maps to a 2D coordinate in the [Viewport] rectangle.
        /// </summary>
        public Vector2 unproject_position(Vector3 world_point)
        {
            object ret = NativeCalls.godot_icall_1_119(method_bind_3, Object.GetPtr(this), ref world_point);
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_position_behind");

        public bool is_position_behind(Vector3 world_point)
        {
            return NativeCalls.godot_icall_1_120(method_bind_4, Object.GetPtr(this), ref world_point);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "project_position");

        public Vector3 project_position(Vector2 screen_point)
        {
            object ret = NativeCalls.godot_icall_1_118(method_bind_5, Object.GetPtr(this), ref screen_point);
            return (Vector3)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_perspective");

        /// <summary>
        /// Set the camera projection to perspective mode, by specifying a [i]FOV[/i] Y angle in degrees (FOV means Field of View), and the [i]near[/i] and [i]far[/i] clip planes in worldspace units.
        /// </summary>
        public void set_perspective(float fov, float z_near, float z_far)
        {
            NativeCalls.godot_icall_3_121(method_bind_6, Object.GetPtr(this), fov, z_near, z_far);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_orthogonal");

        /// <summary>
        /// Set the camera projection to orthogonal mode, by specifying a width and the [i]near[/i] and [i]far[/i] clip planes in worldspace units. (As a hint, 2D games often use this projection, with values specified in pixels)
        /// </summary>
        public void set_orthogonal(float size, float z_near, float z_far)
        {
            NativeCalls.godot_icall_3_121(method_bind_7, Object.GetPtr(this), size, z_near, z_far);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "make_current");

        /// <summary>
        /// Make this camera the current Camera for the [Viewport] (see class description). If the Camera Node is outside the scene tree, it will attempt to become current once it's added.
        /// </summary>
        public void make_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_current");

        public void clear_current()
        {
            NativeCalls.godot_icall_0_7(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_current");

        /// <summary>
        /// Return whether the Camera is the current one in the [Viewport], or plans to become current (if outside the scene tree).
        /// </summary>
        public bool is_current()
        {
            return NativeCalls.godot_icall_0_14(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_camera_transform");

        /// <summary>
        /// Get the camera transform. Subclassed cameras (such as CharacterCamera) may provide different transforms than the [Node] transform.
        /// </summary>
        public Transform get_camera_transform()
        {
            object ret = NativeCalls.godot_icall_0_122(method_bind_11, Object.GetPtr(this));
            return (Transform)ret;
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fov");

        public float get_fov()
        {
            return NativeCalls.godot_icall_0_46(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size");

        public float get_size()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_zfar");

        public float get_zfar()
        {
            return NativeCalls.godot_icall_0_46(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_znear");

        public float get_znear()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_projection");

        public int get_projection()
        {
            return NativeCalls.godot_icall_0_0(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_h_offset");

        public void set_h_offset(float ofs)
        {
            NativeCalls.godot_icall_1_45(method_bind_17, Object.GetPtr(this), ofs);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_h_offset");

        public float get_h_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_v_offset");

        public void set_v_offset(float ofs)
        {
            NativeCalls.godot_icall_1_45(method_bind_19, Object.GetPtr(this), ofs);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_v_offset");

        public float get_v_offset()
        {
            return NativeCalls.godot_icall_0_46(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_visible_layers");

        public void set_visible_layers(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_21, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_visible_layers");

        public int get_visible_layers()
        {
            return NativeCalls.godot_icall_0_0(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_environment");

        public void set_environment(Environment env)
        {
            NativeCalls.godot_icall_1_21(method_bind_23, Object.GetPtr(this), Object.GetPtr(env));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_environment");

        public Environment get_environment()
        {
            return NativeCalls.godot_icall_0_123(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_keep_aspect_mode");

        public void set_keep_aspect_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_25, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_keep_aspect_mode");

        public int get_keep_aspect_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_26, Object.GetPtr(this));
        }
    }
}
