using System;

namespace GodotEngine
{
    /// <summary>
    /// CanvasModulate tints the canvas elements using its asigned color
    /// </summary>
    public class CanvasModulate : Node2D
    {
        private const string nativeName = "CanvasModulate";

        public CanvasModulate() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CanvasModulate_Ctor(this);
        }

        internal CanvasModulate(bool memoryOwn) : base(memoryOwn) {}

        ~CanvasModulate()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Sets the canvas tint color
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_0, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Gets the canvas tint color
        /// </summary>
        public Color get_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_1, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
