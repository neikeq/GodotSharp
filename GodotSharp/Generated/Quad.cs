using System;

namespace GodotEngine
{
    public class Quad : GeometryInstance
    {
        private const string nativeName = "Quad";

        public Quad() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Quad_Ctor(this);
        }

        internal Quad(bool memoryOwn) : base(memoryOwn) {}

        ~Quad()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_axis");

        public void set_axis(int axis)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), axis);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_axis");

        public int get_axis()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size");

        public void set_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size");

        public Vector2 get_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_centered");

        public void set_centered(bool centered)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), centered);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_centered");

        public bool is_centered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_6, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_7, Object.GetPtr(this));
            return (Vector2)ret;
        }
    }
}
