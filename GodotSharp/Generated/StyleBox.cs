using System;

namespace GodotEngine
{
    /// <summary>
    /// StyleBox is [Resource] that provides an abstract base class for drawing stylized boxes for the UI. StyleBoxes are used for drawing the styles of buttons, line edit backgrounds, tree backgrounds, etc. and also for testing a transparency mask for pointer signals. If mask test fails on a StyleBox assigned as mask to a control, clicks and motion signals will go through it to the one below.
    /// </summary>
    public class StyleBox : Resource
    {
        private const string nativeName = "StyleBox";

        internal StyleBox() {}

        internal StyleBox(bool memoryOwn) : base(memoryOwn) {}

        ~StyleBox()
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
                    NativeCalls.godot_icall_StyleBox_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "test_mask");

        /// <summary>
        /// Test a position in a rectangle, return whether it passes the mask test.
        /// </summary>
        public bool test_mask(Vector2 point, Rect2 rect)
        {
            return NativeCalls.godot_icall_2_472(method_bind_0, Object.GetPtr(this), ref point, ref rect);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_margin");

        /// <summary>
        /// Set the default offset "offset" of the margin "margin" (see MARGIN_* enum) for a StyleBox, Controls that draw styleboxes with context inside need to know the margin, so the border of the stylebox is not occluded.
        /// </summary>
        public void set_default_margin(int margin, float offset)
        {
            NativeCalls.godot_icall_2_36(method_bind_1, Object.GetPtr(this), margin, offset);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_margin");

        /// <summary>
        /// Return the default offset of the margin "margin" (see MARGIN_* enum) of a StyleBox, Controls that draw styleboxes with context inside need to know the margin, so the border of the stylebox is not occluded.
        /// </summary>
        public float get_default_margin(int margin)
        {
            return NativeCalls.godot_icall_1_3(method_bind_2, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_margin");

        /// <summary>
        /// Return the offset of margin "margin" (see MARGIN_* enum).
        /// </summary>
        public float get_margin(int margin)
        {
            return NativeCalls.godot_icall_1_3(method_bind_3, Object.GetPtr(this), margin);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_minimum_size");

        /// <summary>
        /// Return the minimum size that this stylebox can be shrunk to.
        /// </summary>
        public Vector2 get_minimum_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_4, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_center_size");

        public Vector2 get_center_size()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the "offset" of a stylebox, this is a helper function, like writing [code]Vector2(style.get_margin(MARGIN_LEFT), style.get_margin(MARGIN_TOP))[/code].
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_6, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "draw");

        public void draw(RID canvas_item, Rect2 rect)
        {
            NativeCalls.godot_icall_2_473(method_bind_7, Object.GetPtr(this), RID.GetPtr(canvas_item), ref rect);
        }
    }
}
