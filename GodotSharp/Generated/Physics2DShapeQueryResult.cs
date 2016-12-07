using System;

namespace GodotEngine
{
    public class Physics2DShapeQueryResult : Reference
    {
        private const string nativeName = "Physics2DShapeQueryResult";

        internal Physics2DShapeQueryResult() {}

        internal Physics2DShapeQueryResult(bool memoryOwn) : base(memoryOwn) {}

        ~Physics2DShapeQueryResult()
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
                    NativeCalls.godot_icall_Physics2DShapeQueryResult_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_result_count");

        public int get_result_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_result_rid");

        public RID get_result_rid(int idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_343(method_bind_1, Object.GetPtr(this), idx);
            return new RID(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_result_object_id");

        public int get_result_object_id(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_2, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_result_object");

        public Object get_result_object(int idx)
        {
            return NativeCalls.godot_icall_1_207(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_result_object_shape");

        public int get_result_object_shape(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_4, Object.GetPtr(this), idx);
        }
    }
}
