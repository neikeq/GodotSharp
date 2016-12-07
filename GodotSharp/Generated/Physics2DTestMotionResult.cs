using System;

namespace GodotEngine
{
    public class Physics2DTestMotionResult : Reference
    {
        private const string nativeName = "Physics2DTestMotionResult";

        public Physics2DTestMotionResult() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Physics2DTestMotionResult_Ctor(this);
        }

        internal Physics2DTestMotionResult(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DTestMotionResult()
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
                    NativeCalls.godot_icall_Physics2DTestMotionResult_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_motion");

        public Vector2 get_motion()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_0, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_motion_remainder");

        public Vector2 get_motion_remainder()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_point");

        public Vector2 get_collision_point()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_2, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collision_normal");

        public Vector2 get_collision_normal()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_velocity");

        public Vector2 get_collider_velocity()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_4, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_id");

        public int get_collider_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_rid");

        public RID get_collider_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_6, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider");

        public Object get_collider()
        {
            return NativeCalls.godot_icall_0_12(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_collider_shape");

        public int get_collider_shape()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }
    }
}
