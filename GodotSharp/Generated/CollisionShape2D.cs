using System;

namespace GodotEngine
{
    /// <summary>
    /// Editor-only class. This is not present when running the game. It's used in the editor to properly edit and position collision shapes in [CollisionObject2D]. This is not accessible from regular code.
    /// </summary>
    public class CollisionShape2D : Node2D
    {
        private const string nativeName = "CollisionShape2D";

        public CollisionShape2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CollisionShape2D_Ctor(this);
        }

        internal CollisionShape2D(bool memoryOwn) : base(memoryOwn) {}

        ~CollisionShape2D()
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
        /// Set this shape's [Shape2D]. This will not appear as a node, but can be directly edited as a property.
        /// </summary>
        public void set_shape(Object shape)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(shape));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shape");

        /// <summary>
        /// Return this shape's [Shape2D].
        /// </summary>
        public Object get_shape()
        {
            return NativeCalls.godot_icall_0_12(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_trigger");

        /// <summary>
        /// Set whether this shape is a trigger. A trigger shape detects collisions, but is otherwise unaffected by physics (i.e. will not block movement of colliding objects).
        /// </summary>
        public void set_trigger(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_trigger");

        /// <summary>
        /// Return whether this shape is a trigger.
        /// </summary>
        public bool is_trigger()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_object_shape_index");

        /// <summary>
        /// Return the index of this shape inside its container [CollisionObject2D]. This can be used to directly access the underlying [Shape2D].
        /// </summary>
        public int get_collision_object_shape_index()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }
    }
}
