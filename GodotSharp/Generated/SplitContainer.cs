using System;

namespace GodotEngine
{
    /// <summary>
    /// Container for splitting two controls vertically or horizontally, with a grabber that allows adjusting the split offset or ratio.
    /// </summary>
    public class SplitContainer : Container
    {
        /// <summary>
        /// The split dragger is visible.
        /// </summary>
        public const int DRAGGER_VISIBLE = 0;
        /// <summary>
        /// The split dragger is invisible.
        /// </summary>
        public const int DRAGGER_HIDDEN = 1;
        /// <summary>
        /// The split dragger is invisible and collapsed.
        /// </summary>
        public const int DRAGGER_HIDDEN_COLLAPSED = 2;

        private const string nativeName = "SplitContainer";

        internal SplitContainer() {}

        internal SplitContainer(bool memoryOwn) : base(memoryOwn) {}

        ~SplitContainer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_split_offset");

        /// <summary>
        /// Set the split offset.
        /// </summary>
        public void set_split_offset(int offset)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), offset);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_split_offset");

        /// <summary>
        /// Return the split offset.
        /// </summary>
        public int get_split_offset()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_collapsed");

        /// <summary>
        /// Set if the split must be collapsed.
        /// </summary>
        public void set_collapsed(bool collapsed)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), collapsed);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_collapsed");

        /// <summary>
        /// Return true if the split is collapsed.
        /// </summary>
        public bool is_collapsed()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_dragger_visibility");

        /// <summary>
        /// Set visibility of the split dragger([i]mode[/i] must be one of [DRAGGER_VISIBLE], [DRAGGER_HIDDEN] or [DRAGGER_HIDDEN_COLLAPSED]).
        /// </summary>
        public void set_dragger_visibility(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_4, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_dragger_visibility");

        /// <summary>
        /// Return visibility of the split dragger(One of [DRAGGER_VISIBLE], [DRAGGER_HIDDEN] or [DRAGGER_HIDDEN_COLLAPSED]).
        /// </summary>
        public int get_dragger_visibility()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }
    }
}
