using System;

namespace GodotEngine
{
    /// <summary>
    /// PhysicsBody is an abstract base class for implementing a physics body. All PhysicsBody types inherit from it.
    /// </summary>
    public class PhysicsBody : CollisionObject
    {
        private const string nativeName = "PhysicsBody";

        internal PhysicsBody() {}

        internal PhysicsBody(bool memoryOwn) : base(memoryOwn) {}

        ~PhysicsBody()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask");

        public void set_layer_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask");

        public int get_layer_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask");

        public void set_collision_mask(int mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), mask);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask");

        public int get_collision_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collision_mask_bit");

        public void set_collision_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_4, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_mask_bit");

        public bool get_collision_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_5, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_mask_bit");

        public void set_layer_mask_bit(int bit, bool @value)
        {
            NativeCalls.godot_icall_2_32(method_bind_6, Object.GetPtr(this), bit, @value);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_mask_bit");

        public bool get_layer_mask_bit(int bit)
        {
            return NativeCalls.godot_icall_1_33(method_bind_7, Object.GetPtr(this), bit);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_collision_exception_with");

        public void add_collision_exception_with(PhysicsBody body)
        {
            NativeCalls.godot_icall_1_20(method_bind_8, Object.GetPtr(this), Object.GetPtr(body));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_collision_exception_with");

        public void remove_collision_exception_with(PhysicsBody body)
        {
            NativeCalls.godot_icall_1_20(method_bind_9, Object.GetPtr(this), Object.GetPtr(body));
        }
    }
}
