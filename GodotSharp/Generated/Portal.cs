using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Portals provide virtual openings to [VisualInstance] nodes, so cameras can look at them from the outside. Note that portals are a visibility optimization technique, and are in no way related to the game of the same name (as in, they are not used for teleportation). For more information on how rooms and portals work, see [VisualInstance]. Portals are represented as 2D convex polygon shapes (in the X,Y local plane), and are placed on the surface of the areas occupied by a [VisualInstance], to indicate that the room can be accessed or looked-at through them. If two rooms are next to each other, and two similar portals in each of them share the same world position (and are parallel and opposed to each other), they will automatically "connect" and form "doors" (for example, the portals that connect a kitchen to a living room are placed in the door they share). Portals must always have a [VisualInstance] node as a parent, grandparent or far parent, or else they will not be active.
    /// </summary>
    public class Portal : VisualInstance
    {
        private const string nativeName = "Portal";

        public Portal() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Portal_Ctor(this);
        }

        internal Portal(bool memoryOwn) : base(memoryOwn) {}

        ~Portal()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shape");

        /// <summary>
        /// Set the portal shape. The shape is an array of [Vector2] points, representing a convex polygon in the X,Y plane.
        /// </summary>
        public void set_shape(List<Vector2> points)
        {
            NativeCalls.godot_icall_1_156(method_bind_0, Object.GetPtr(this), points.ToArray());
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape");

        /// <summary>
        /// Return the portal shape. The shape is an array of [Vector2] points, representing a convex polygon in the X,Y plane.
        /// </summary>
        public List<Vector2> get_shape()
        {
            Vector2[] ret = NativeCalls.godot_icall_0_157(method_bind_1, Object.GetPtr(this));
            return new List<Vector2>(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled");

        /// <summary>
        /// Enable the portal (it is enabled by default though), disabling it will cause the parent [VisualInstance] to not be visible any longer when looking through the portal.
        /// </summary>
        public void set_enabled(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabled");

        /// <summary>
        /// Return whether the portal is active. When disabled it causes the parent [VisualInstance] to not be visible any longer when looking through the portal.
        /// </summary>
        public bool is_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disable_distance");

        /// <summary>
        /// Set the distance threshold for disabling the portal. Every time that the portal goes beyond "distance", it disables itself, becoming the opaque color (see [method set_disabled_color]).
        /// </summary>
        public void set_disable_distance(float distance)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), distance);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_disable_distance");

        /// <summary>
        /// Return the distance threshold for disabling the portal. Every time that the portal goes beyond "distance", it disables itself, becoming the opaque color (see [method set_disabled_color]).
        /// </summary>
        public float get_disable_distance()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disabled_color");

        /// <summary>
        /// When the portal goes beyond the disable distance (see [method set_disable_distance]), it becomes opaque and displayed with color "color".
        /// </summary>
        public void set_disabled_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_6, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_disabled_color");

        /// <summary>
        /// Return the color for when the portal goes beyond the disable distance (see [method set_disable_distance]) and becomes disabled.
        /// </summary>
        public Color get_disabled_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_7, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_connect_range");

        /// <summary>
        /// Set the range for auto-connecting two portals from different rooms sharing the same space.
        /// </summary>
        public void set_connect_range(float range)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), range);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_connect_range");

        /// <summary>
        /// Return the range for auto-connecting two portals from different rooms sharing the same space.
        /// </summary>
        public float get_connect_range()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }
    }
}
