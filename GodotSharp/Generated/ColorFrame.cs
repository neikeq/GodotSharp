using System;

namespace GodotEngine
{
    public class ColorFrame : Control
    {
        private const string nativeName = "ColorFrame";

        public ColorFrame() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ColorFrame_Ctor(this);
        }

        internal ColorFrame(bool memoryOwn) : base(memoryOwn) {}

        ~ColorFrame()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_frame_color");

        public void set_frame_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_0, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_frame_color");

        public Color get_frame_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_1, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
