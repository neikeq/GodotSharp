using System;

namespace GodotEngine
{
    /// <summary>
    /// SpinBox is a numerical input text field. It allows entering integers and floats.
    /// </summary>
    public class SpinBox : Range
    {
        private const string nativeName = "SpinBox";

        public SpinBox() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SpinBox_Ctor(this);
        }

        internal SpinBox(bool memoryOwn) : base(memoryOwn) {}

        ~SpinBox()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_suffix");

        /// <summary>
        /// Set a specific suffix.
        /// </summary>
        public void set_suffix(string suffix)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), suffix);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_suffix");

        /// <summary>
        /// Return the specific suffix.
        /// </summary>
        public string get_suffix()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_prefix");

        /// <summary>
        /// Set a prefix.
        /// </summary>
        public void set_prefix(string prefix)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), prefix);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_prefix");

        public string get_prefix()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editable");

        /// <summary>
        /// Set whether the spinbox is editable.
        /// </summary>
        public void set_editable(bool editable)
        {
            NativeCalls.godot_icall_1_13(method_bind_4, Object.GetPtr(this), editable);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editable");

        /// <summary>
        /// Return if the spinbox is editable.
        /// </summary>
        public bool is_editable()
        {
            return NativeCalls.godot_icall_0_14(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_line_edit");

        public Object get_line_edit()
        {
            return NativeCalls.godot_icall_0_12(method_bind_6, Object.GetPtr(this));
        }
    }
}
