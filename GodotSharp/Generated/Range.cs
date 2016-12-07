using System;

namespace GodotEngine
{
    /// <summary>
    /// Range is a base class for [Control] nodes that change a floating point [i]value[/i] between a [i]minimum[/i] and a [i]maximum[/i], using [i]step[/i] and [i]page[/i], for example a [ScrollBar].
    /// </summary>
    public class Range : Control
    {
        private const string nativeName = "Range";

        public Range() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Range_Ctor(this);
        }

        internal Range(bool memoryOwn) : base(memoryOwn) {}

        ~Range()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_val");

        /// <summary>
        /// Return the current value.
        /// </summary>
        public float get_val()
        {
            return NativeCalls.godot_icall_0_46(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_value");

        public float get_value()
        {
            return NativeCalls.godot_icall_0_46(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_min");

        /// <summary>
        /// Return the minimum value.
        /// </summary>
        public float get_min()
        {
            return NativeCalls.godot_icall_0_46(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_max");

        /// <summary>
        /// Return the maximum value.
        /// </summary>
        public float get_max()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_step");

        /// <summary>
        /// Return the stepping, if step is 0, stepping is disabled.
        /// </summary>
        public float get_step()
        {
            return NativeCalls.godot_icall_0_46(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_page");

        /// <summary>
        /// Return the page size, if page is 0, paging is disabled.
        /// </summary>
        public float get_page()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_unit_value");

        /// <summary>
        /// Return value mapped to 0 to 1 (unit) range.
        /// </summary>
        public float get_unit_value()
        {
            return NativeCalls.godot_icall_0_46(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_val");

        public void set_val(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_7, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_value");

        public void set_value(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_min");

        /// <summary>
        /// Set minimum value, clamped range value to it if it's less.
        /// </summary>
        public void set_min(float minimum)
        {
            NativeCalls.godot_icall_1_45(method_bind_9, Object.GetPtr(this), minimum);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_max");

        public void set_max(float maximum)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), maximum);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_step");

        /// <summary>
        /// Set step value. If step is 0, stepping will be disabled.
        /// </summary>
        public void set_step(float step)
        {
            NativeCalls.godot_icall_1_45(method_bind_11, Object.GetPtr(this), step);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_page");

        /// <summary>
        /// Set page size. Page is mainly used for scrollbars or anything that controls text scrolling.
        /// </summary>
        public void set_page(float pagesize)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), pagesize);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_unit_value");

        /// <summary>
        /// Set value mapped to 0 to 1 (unit) range, it will then be converted to the actual value within min and max.
        /// </summary>
        public void set_unit_value(float @value)
        {
            NativeCalls.godot_icall_1_45(method_bind_13, Object.GetPtr(this), @value);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rounded_values");

        public void set_rounded_values(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_rounded_values");

        public bool is_rounded_values()
        {
            return NativeCalls.godot_icall_0_14(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_exp_unit_value");

        public void set_exp_unit_value(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_16, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_unit_value_exp");

        public bool is_unit_value_exp()
        {
            return NativeCalls.godot_icall_0_14(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "share");

        public void share(Object with)
        {
            NativeCalls.godot_icall_1_20(method_bind_18, Object.GetPtr(this), Object.GetPtr(with));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "unshare");

        public void unshare()
        {
            NativeCalls.godot_icall_0_7(method_bind_19, Object.GetPtr(this));
        }
    }
}
