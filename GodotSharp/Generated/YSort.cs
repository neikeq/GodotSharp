using System;

namespace GodotEngine
{
    /// <summary>
    /// Sort all child nodes based on their Y positions. The child node must inherit from [CanvasItem] for it to be sorted. Nodes that have a higher Y position will be drawn later, so they will appear on top of nodes that have a lower Y position.
    /// </summary>
    public class YSort : Node2D
    {
        private const string nativeName = "YSort";

        public YSort() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_YSort_Ctor(this);
        }

        internal YSort(bool memoryOwn) : base(memoryOwn) {}

        ~YSort()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sort_enabled");

        /// <summary>
        /// Set whether the children nodes are sorted or not. (default true)
        /// </summary>
        public void set_sort_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_sort_enabled");

        /// <summary>
        /// Returns true if the children nodes are being sorted.
        /// </summary>
        public bool is_sort_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }
    }
}
