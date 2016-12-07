using System;

namespace GodotEngine
{
    public class AnimatedSprite3D : SpriteBase3D
    {
        private const string nativeName = "AnimatedSprite3D";

        public AnimatedSprite3D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AnimatedSprite3D_Ctor(this);
        }

        internal AnimatedSprite3D(bool memoryOwn) : base(memoryOwn) {}

        ~AnimatedSprite3D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sprite_frames");

        /// <summary>
        /// Set the [SpriteFrames] resource, which contains all frames.
        /// </summary>
        public void set_sprite_frames(SpriteFrames sprite_frames)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(sprite_frames));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sprite_frames");

        /// <summary>
        /// Get the [SpriteFrames] resource, which contains all frames.
        /// </summary>
        public SpriteFrames get_sprite_frames()
        {
            return NativeCalls.godot_icall_0_22(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_animation");

        /// <summary>
        /// Set the current animation of the node and reinits the frame counter of the animation.
        /// </summary>
        public void set_animation(string animation)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), animation);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_animation");

        /// <summary>
        /// Return the name of the current animation set to the node.
        /// </summary>
        public string get_animation()
        {
            return NativeCalls.godot_icall_0_19(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Play the animation set in parameter. If no parameter is provided, the current animation is played.
        /// </summary>
        public void play(string anim = "")
        {
            NativeCalls.godot_icall_1_18(method_bind_4, Object.GetPtr(this), anim);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop the current animation (does not reset the frame counter).
        /// </summary>
        public void stop()
        {
            NativeCalls.godot_icall_0_7(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        /// <summary>
        /// Return true if an animation if currently being played.
        /// </summary>
        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_frame");

        /// <summary>
        /// Set the visible sprite frame index (from the list of frames inside the [SpriteFrames] resource).
        /// </summary>
        public void set_frame(int frame)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), frame);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_frame");

        /// <summary>
        /// Return the visible frame index.
        /// </summary>
        public int get_frame()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }
    }
}
