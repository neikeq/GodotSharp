using System;

namespace GodotEngine
{
    /// <summary>
    /// The VisibilityEnabler will disable [RigidBody] and [AnimationPlayer] nodes when they are not visible. It will only affect other nodes within the same scene as the VisibilityEnabler itself.
    /// </summary>
    public class VisibilityEnabler : VisibilityNotifier
    {
        /// <summary>
        /// This enabler will freeze [RigidBody] nodes.
        /// </summary>
        public const int ENABLER_FREEZE_BODIES = 1;
        /// <summary>
        /// This enabler will pause [AnimationPlayer] nodes.
        /// </summary>
        public const int ENABLER_PAUSE_ANIMATIONS = 0;
        public const int ENABLER_MAX = 2;

        private const string nativeName = "VisibilityEnabler";

        public VisibilityEnabler() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisibilityEnabler_Ctor(this);
        }

        internal VisibilityEnabler(bool memoryOwn) : base(memoryOwn) {}

        ~VisibilityEnabler()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabler");

        /// <summary>
        /// Set an enabler to true for all nodes of its type to be disabled when the VisibilityEnabler is not in view. See the constants for enablers and what they affect.
        /// </summary>
        public void set_enabler(int enabler, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_0, Object.GetPtr(this), enabler, enabled);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabler_enabled");

        /// <summary>
        /// Returns whether the specified enabler was set to true or not.
        /// </summary>
        public bool is_enabler_enabled(int enabler)
        {
            return NativeCalls.godot_icall_1_33(method_bind_1, Object.GetPtr(this), enabler);
        }
    }
}
