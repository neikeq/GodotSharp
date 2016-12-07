using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Theme for skinning controls. Controls can be skinned individually, but for complex applications it's more efficient to just create a global theme that defines everything. This theme can be applied to any [Control], and it and its children will automatically use it.
    /// Theme resources can be alternatively loaded by writing them in a .theme file, see docs for more info.
    /// </summary>
    public class Theme : Resource
    {
        private const string nativeName = "Theme";

        public Theme() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Theme_Ctor(this);
        }

        internal Theme(bool memoryOwn) : base(memoryOwn) {}

        ~Theme()
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
                    NativeCalls.godot_icall_Theme_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_icon");

        public void set_icon(string name, string type, Texture texture)
        {
            NativeCalls.godot_icall_3_485(method_bind_0, Object.GetPtr(this), name, type, Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon");

        public Texture get_icon(string name, string type)
        {
            return NativeCalls.godot_icall_2_180(method_bind_1, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_icon");

        public bool has_icon(string name, string type)
        {
            return NativeCalls.godot_icall_2_171(method_bind_2, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_icon");

        public void clear_icon(string name, string type)
        {
            NativeCalls.godot_icall_2_48(method_bind_3, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_icon_list");

        public List<string> get_icon_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_4, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_stylebox");

        public void set_stylebox(string name, string type, StyleBox texture)
        {
            NativeCalls.godot_icall_3_485(method_bind_5, Object.GetPtr(this), name, type, Object.GetPtr(texture));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stylebox");

        public StyleBox get_stylebox(string name, string type)
        {
            return NativeCalls.godot_icall_2_181(method_bind_6, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_stylebox");

        public bool has_stylebox(string name, string type)
        {
            return NativeCalls.godot_icall_2_171(method_bind_7, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_stylebox");

        public void clear_stylebox(string name, string type)
        {
            NativeCalls.godot_icall_2_48(method_bind_8, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stylebox_list");

        public List<string> get_stylebox_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_9, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_stylebox_types");

        public List<string> get_stylebox_types()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_10, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_font");

        public void set_font(string name, string type, Font font)
        {
            NativeCalls.godot_icall_3_485(method_bind_11, Object.GetPtr(this), name, type, Object.GetPtr(font));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_font");

        public Font get_font(string name, string type)
        {
            return NativeCalls.godot_icall_2_182(method_bind_12, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_font");

        public bool has_font(string name, string type)
        {
            return NativeCalls.godot_icall_2_171(method_bind_13, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_font");

        public void clear_font(string name, string type)
        {
            NativeCalls.godot_icall_2_48(method_bind_14, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_font_list");

        public List<string> get_font_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_15, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        public void set_color(string name, string type, Color color)
        {
            NativeCalls.godot_icall_3_486(method_bind_16, Object.GetPtr(this), name, type, ref color);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        public Color get_color(string name, string type)
        {
            object ret = NativeCalls.godot_icall_2_183(method_bind_17, Object.GetPtr(this), name, type);
            return (Color)ret;
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_color");

        public bool has_color(string name, string type)
        {
            return NativeCalls.godot_icall_2_171(method_bind_18, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_color");

        public void clear_color(string name, string type)
        {
            NativeCalls.godot_icall_2_48(method_bind_19, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color_list");

        public List<string> get_color_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_20, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_constant");

        public void set_constant(string name, string type, int constant)
        {
            NativeCalls.godot_icall_3_401(method_bind_21, Object.GetPtr(this), name, type, constant);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant");

        public int get_constant(string name, string type)
        {
            return NativeCalls.godot_icall_2_62(method_bind_22, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_constant");

        public bool has_constant(string name, string type)
        {
            return NativeCalls.godot_icall_2_171(method_bind_23, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_constant");

        public void clear_constant(string name, string type)
        {
            NativeCalls.godot_icall_2_48(method_bind_24, Object.GetPtr(this), name, type);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_constant_list");

        public List<string> get_constant_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_25, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_font");

        public void set_default_font(Object font)
        {
            NativeCalls.godot_icall_1_20(method_bind_26, Object.GetPtr(this), Object.GetPtr(font));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_font");

        public Object get_default_font()
        {
            return NativeCalls.godot_icall_0_12(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_type_list");

        public List<string> get_type_list(string type)
        {
            string[] ret = NativeCalls.godot_icall_1_172(method_bind_28, Object.GetPtr(this), type);
            return new List<string>(ret);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "copy_default_theme");

        public void copy_default_theme()
        {
            NativeCalls.godot_icall_0_7(method_bind_29, Object.GetPtr(this));
        }
    }
}
