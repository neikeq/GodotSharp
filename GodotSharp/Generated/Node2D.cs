using System;

namespace GodotEngine
{
    /// <summary>
    /// Base node for 2D system. Node2D contains a position, rotation and scale, which is used to position and animate. It can alternatively be used with a custom 2D transform ([Matrix32]). A tree of Node2Ds allows complex hierarchies for animation and positioning.
    /// </summary>
    public class Node2D : CanvasItem
    {
        private const string nativeName = "Node2D";

        public Node2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Node2D_Ctor(this);
        }

        internal Node2D(bool memoryOwn) : base(memoryOwn) {}

        ~Node2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_pos");

        /// <summary>
        /// Set the position of the 2D node.
        /// </summary>
        public void set_pos(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rot");

        /// <summary>
        /// Set the rotation of the 2D node.
        /// </summary>
        public void set_rot(float radians)
        {
            NativeCalls.godot_icall_1_45(method_bind_1, Object.GetPtr(this), radians);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rotd");

        /// <summary>
        /// Set the rotation of the 2D node.
        /// </summary>
        public void set_rotd(float degrees)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), degrees);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_scale");

        /// <summary>
        /// Set the scale of the 2D node.
        /// </summary>
        public void set_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_3, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        /// <summary>
        /// Return the position of the 2D node.
        /// </summary>
        public Vector2 get_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_4, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rot");

        /// <summary>
        /// Return the rotation of the 2D node.
        /// </summary>
        public float get_rot()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rotd");

        public float get_rotd()
        {
            return NativeCalls.godot_icall_0_46(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_scale");

        /// <summary>
        /// Return the scale of the 2D node.
        /// </summary>
        public Vector2 get_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_7, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rotate");

        /// <summary>
        /// Apply a 'radians' rotation to the 2D node, starting from its current rotation.
        /// </summary>
        public void rotate(float radians)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), radians);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_local_x");

        /// <summary>
        /// Apply a local translation on X axis to the 2D node according to the 'delta' of the process. If 'scaled' is false, the movement is normalized.
        /// </summary>
        public void move_local_x(float delta, bool scaled = false)
        {
            NativeCalls.godot_icall_2_59(method_bind_9, Object.GetPtr(this), delta, scaled);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "move_local_y");

        /// <summary>
        /// Apply a local translation on Y axis to the 2D node according to the 'delta' of the process. If 'scaled' is false, the movement is normalized.
        /// </summary>
        public void move_local_y(float delta, bool scaled = false)
        {
            NativeCalls.godot_icall_2_59(method_bind_10, Object.GetPtr(this), delta, scaled);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "translate");

        /// <summary>
        /// Apply a local translation of 'offset' to the 2D node, starting from its current local position.
        /// </summary>
        public void translate(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_11, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "global_translate");

        /// <summary>
        /// Apply a global translation of 'offset' to the 2D node, starting from its current global position.
        /// </summary>
        public void global_translate(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_12, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "scale");

        /// <summary>
        /// Apply the 'ratio' scale to the 2D node, according to its current scale value.
        /// </summary>
        public void scale(Vector2 ratio)
        {
            NativeCalls.godot_icall_1_23(method_bind_13, Object.GetPtr(this), ref ratio);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_pos");

        /// <summary>
        /// Set the global position of the 2D node to 'pos'.
        /// </summary>
        public void set_global_pos(Vector2 pos)
        {
            NativeCalls.godot_icall_1_23(method_bind_14, Object.GetPtr(this), ref pos);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_pos");

        /// <summary>
        /// Return the global position of the 2D node.
        /// </summary>
        public Vector2 get_global_pos()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_15, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_rot");

        /// <summary>
        /// Set the global rotation in radians of the 2D node.
        /// </summary>
        public void set_global_rot(float radians)
        {
            NativeCalls.godot_icall_1_45(method_bind_16, Object.GetPtr(this), radians);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_rot");

        /// <summary>
        /// Return the global rotation in radians of the 2D node.
        /// </summary>
        public float get_global_rot()
        {
            return NativeCalls.godot_icall_0_46(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_rotd");

        /// <summary>
        /// Set the global rotation in degrees of the 2D node.
        /// </summary>
        public void set_global_rotd(float degrees)
        {
            NativeCalls.godot_icall_1_45(method_bind_18, Object.GetPtr(this), degrees);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_rotd");

        /// <summary>
        /// Return the global rotation in degrees of the 2D node.
        /// </summary>
        public float get_global_rotd()
        {
            return NativeCalls.godot_icall_0_46(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_scale");

        /// <summary>
        /// Set the global scale of the 2D node.
        /// </summary>
        public void set_global_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_20, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_global_scale");

        /// <summary>
        /// Return the global scale of the 2D node.
        /// </summary>
        public Vector2 get_global_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_21, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transform");

        /// <summary>
        /// Set the local transform [Matrix32] of the 2D node.
        /// </summary>
        public void set_transform(Matrix32 xform)
        {
            NativeCalls.godot_icall_1_140(method_bind_22, Object.GetPtr(this), ref xform);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_global_transform");

        /// <summary>
        /// Set the global transform [Matrix32] of the 2D node.
        /// </summary>
        public void set_global_transform(Matrix32 xform)
        {
            NativeCalls.godot_icall_1_140(method_bind_23, Object.GetPtr(this), ref xform);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "look_at");

        /// <summary>
        /// Rotate the 2d node so it points at 'point' position.
        /// </summary>
        public void look_at(Vector2 point)
        {
            NativeCalls.godot_icall_1_23(method_bind_24, Object.GetPtr(this), ref point);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_angle_to");

        /// <summary>
        /// Return the rotation angle in radians needed for the 2d node to point at 'point' position.
        /// </summary>
        public float get_angle_to(Vector2 point)
        {
            return NativeCalls.godot_icall_1_319(method_bind_25, Object.GetPtr(this), ref point);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_z");

        /// <summary>
        /// Set the Z-index value of the 2D node.
        /// </summary>
        public void set_z(int z)
        {
            NativeCalls.godot_icall_1_4(method_bind_26, Object.GetPtr(this), z);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_z");

        /// <summary>
        /// Return the Z-index of the 2D node.
        /// </summary>
        public int get_z()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_z_as_relative");

        /// <summary>
        /// Set the Z-index value as relative to the parent node of this 2D node. Thus, if this 2D node's Z-index value is 2 and its parent's effective Z-index is 3, then the effective Z-index value of this 2D node would be 3 + 2 = 5.
        /// </summary>
        public void set_z_as_relative(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_28, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_z_relative");

        /// <summary>
        /// Return true if the Z-index value of this 2D node is relative to its parent's. Else, return false.
        /// </summary>
        public bool is_z_relative()
        {
            return NativeCalls.godot_icall_0_14(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "edit_set_pivot");

        /// <summary>
        /// Set the pivot position of the 2D node to 'pivot' value. This method is implemented only in some nodes that inherit Node2D.
        /// </summary>
        public void edit_set_pivot(Vector2 pivot)
        {
            NativeCalls.godot_icall_1_23(method_bind_30, Object.GetPtr(this), ref pivot);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_relative_transform_to_parent");

        /// <summary>
        /// Return the transform [Matrix32] calculated relatively to the parent of this 2D node.
        /// </summary>
        public Matrix32 get_relative_transform_to_parent(Object parent)
        {
            object ret = NativeCalls.godot_icall_1_320(method_bind_31, Object.GetPtr(this), Object.GetPtr(parent));
            return (Matrix32)ret;
        }
    }
}
