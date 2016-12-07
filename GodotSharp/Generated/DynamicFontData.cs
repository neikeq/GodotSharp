using System;

namespace GodotEngine
{
    public class DynamicFontData : Resource
    {
        private const string nativeName = "DynamicFontData";

        public DynamicFontData() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_DynamicFontData_Ctor(this);
        }

        internal DynamicFontData(bool memoryOwn) : base(memoryOwn) {}

        ~DynamicFontData()
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
                    NativeCalls.godot_icall_DynamicFontData_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_font_path");

        public void set_font_path(string path)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), path);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_font_path");

        public string get_font_path()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }
    }
}
