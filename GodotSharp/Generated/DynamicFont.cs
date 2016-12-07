using System;

namespace GodotEngine
{
    public class DynamicFont : Font
    {
        public const int SPACING_TOP = 0;
        public const int SPACING_BOTTOM = 1;
        public const int SPACING_CHAR = 2;
        public const int SPACING_SPACE = 3;

        private const string nativeName = "DynamicFont";

        public DynamicFont() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_DynamicFont_Ctor(this);
        }

        internal DynamicFont(bool memoryOwn) : base(memoryOwn) {}

        ~DynamicFont()
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
                    NativeCalls.godot_icall_DynamicFont_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_font_data");

        public void set_font_data(DynamicFontData data)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(data));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_font_data");

        public DynamicFontData get_font_data()
        {
            return NativeCalls.godot_icall_0_202(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size");

        public void set_size(int data)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), data);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_size");

        public int get_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_mipmaps");

        public void set_use_mipmaps(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_use_mipmaps");

        public bool get_use_mipmaps()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_use_filter");

        public void set_use_filter(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_6, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_use_filter");

        public bool get_use_filter()
        {
            return NativeCalls.godot_icall_0_14(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_spacing");

        public void set_spacing(int type, int @value)
        {
            NativeCalls.godot_icall_2_5(method_bind_8, Object.GetPtr(this), type, @value);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_spacing");

        public int get_spacing(int type)
        {
            return NativeCalls.godot_icall_1_28(method_bind_9, Object.GetPtr(this), type);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_fallback");

        public void add_fallback(DynamicFontData data)
        {
            NativeCalls.godot_icall_1_21(method_bind_10, Object.GetPtr(this), Object.GetPtr(data));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_fallback");

        public void set_fallback(int idx, DynamicFontData data)
        {
            NativeCalls.godot_icall_2_115(method_bind_11, Object.GetPtr(this), idx, Object.GetPtr(data));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fallback");

        public DynamicFontData get_fallback(int idx)
        {
            return NativeCalls.godot_icall_1_203(method_bind_12, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_fallback");

        public void remove_fallback(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_fallback_count");

        public int get_fallback_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }
    }
}
