using System;

namespace GodotEngine
{
    /// <summary>
    /// The VisibilityEnabler2D will disable [RigidBody2D], [AnimationPlayer], and other nodes when they are not visible. It will only affect other nodes within the same scene as the VisibilityEnabler2D itself.
    /// </summary>
    public class VisibilityEnabler2D : VisibilityNotifier2D
    {
        /// <summary>
        /// This enabler will freeze [RigidBody2D] nodes.
        /// </summary>
        public const int ENABLER_FREEZE_BODIES = 1;
        /// <summary>
        /// This enabler will pause [AnimationPlayer] nodes.
        /// </summary>
        public const int ENABLER_PAUSE_ANIMATIONS = 0;
        /// <summary>
        /// This enabler will stop [Particles2D] nodes.
        /// </summary>
        public const int ENABLER_PAUSE_PARTICLES = 2;
        public const int ENABLER_PAUSE_ANIMATED_SPRITES = 5;
        /// <summary>
        /// This enabler will stop the parent's _process function.
        /// </summary>
        public const int ENABLER_PARENT_PROCESS = 3;
        /// <summary>
        /// This enabler will stop the parent's _fixed_process function.
        /// </summary>
        public const int ENABLER_PARENT_FIXED_PROCESS = 4;
        public const int ENABLER_MAX = 6;

        private const string nativeName = "VisibilityEnabler2D";

        public VisibilityEnabler2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisibilityEnabler2D_Ctor(this);
        }

        internal VisibilityEnabler2D(bool memoryOwn) : base(memoryOwn) {}

        ~VisibilityEnabler2D()
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
        /// Set an enabler to true for all nodes of its type to be disabled when the VisibilityEnabler2D is not in view. See the constants for enablers and what they affect.
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
