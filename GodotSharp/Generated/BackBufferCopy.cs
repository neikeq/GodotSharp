using System;

namespace GodotEngine
{
    /// <summary>
    /// Node for back-buffering the currently displayed screen. The region defined in the BackBufferCopy node is bufferized with the content of the screen it covers, or the entire screen according to the copy mode set. Accessing this buffer is done with the texscreen() shader instruction.
    /// </summary>
    public class BackBufferCopy : Node2D
    {
        /// <summary>
        /// Disables the buffering mode. This means the BackBufferCopy node will directly use the portion of screen it covers.
        /// </summary>
        public const int COPY_MODE_DISABLED = 0;
        /// <summary>
        /// Sets the copy mode to a region.
        /// </summary>
        public const int COPY_MODE_RECT = 1;
        /// <summary>
        /// Sets the copy mode to the entire screen.
        /// </summary>
        public const int COPY_MODE_VIEWPORT = 2;

        private const string nativeName = "BackBufferCopy";

        public BackBufferCopy() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BackBufferCopy_Ctor(this);
        }

        internal BackBufferCopy(bool memoryOwn) : base(memoryOwn) {}

        ~BackBufferCopy()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_rect");

        /// <summary>
        /// Defines the area covered by the BackBufferCopy.
        /// </summary>
        public void set_rect(Rect2 rect)
        {
            NativeCalls.godot_icall_1_81(method_bind_0, Object.GetPtr(this), ref rect);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rect");

        /// <summary>
        /// Return the area covered by the BackBufferCopy.
        /// </summary>
        public Rect2 get_rect()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_1, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_copy_mode");

        /// <summary>
        /// Set the copy mode of the BackBufferCopy (refer to constants section).
        /// </summary>
        public void set_copy_mode(int copy_mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_2, Object.GetPtr(this), copy_mode);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_copy_mode");

        /// <summary>
        /// Return the copy mode currently applied to the BackBufferCopy (refer to constants section).
        /// </summary>
        public int get_copy_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_3, Object.GetPtr(this));
        }
    }
}
