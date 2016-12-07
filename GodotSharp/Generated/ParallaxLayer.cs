using System;

namespace GodotEngine
{
    /// <summary>
    /// A ParallaxLayer must be the child of a [ParallaxBackground] node. All child nodes will be affected by the parallax scrolling of this layer.
    /// </summary>
    public class ParallaxLayer : Node2D
    {
        private const string nativeName = "ParallaxLayer";

        public ParallaxLayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ParallaxLayer_Ctor(this);
        }

        internal ParallaxLayer(bool memoryOwn) : base(memoryOwn) {}

        ~ParallaxLayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_motion_scale");

        /// <summary>
        /// Set the motion scale of the ParallaxLayer. If an axis is set to 0 then it will not move at all, it will stick with the camera.
        /// </summary>
        public void set_motion_scale(Vector2 scale)
        {
            NativeCalls.godot_icall_1_23(method_bind_0, Object.GetPtr(this), ref scale);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_motion_scale");

        /// <summary>
        /// Return the motion scale of the ParallaxLayer.
        /// </summary>
        public Vector2 get_motion_scale()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_1, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_motion_offset");

        public void set_motion_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_2, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_motion_offset");

        public Vector2 get_motion_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_3, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mirroring");

        /// <summary>
        /// Set the mirroring of the ParallaxLayer. If an axis is set to 0 then that axis will have no mirroring.
        /// </summary>
        public void set_mirroring(Vector2 mirror)
        {
            NativeCalls.godot_icall_1_23(method_bind_4, Object.GetPtr(this), ref mirror);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mirroring");

        /// <summary>
        /// Return the mirroring of the ParallaxLayer.
        /// </summary>
        public Vector2 get_mirroring()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_5, Object.GetPtr(this));
            return (Vector2)ret;
        }
    }
}
