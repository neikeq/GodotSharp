using System;

namespace GodotEngine
{
    /// <summary>
    /// Sprite node that can use multiple textures for animation.
    /// </summary>
    public class AnimatedSprite : Node2D
    {
        private const string nativeName = "AnimatedSprite";

        public AnimatedSprite() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AnimatedSprite_Ctor(this);
        }

        internal AnimatedSprite(bool memoryOwn) : base(memoryOwn) {}

        ~AnimatedSprite()
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

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_centered");

        /// <summary>
        /// When turned on, offset at (0,0) is the center of the sprite, when off, the top-left corner is.
        /// </summary>
        public void set_centered(bool centered)
        {
            NativeCalls.godot_icall_1_13(method_bind_7, Object.GetPtr(this), centered);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_centered");

        /// <summary>
        /// Return true when centered. See [method set_centered].
        /// </summary>
        public bool is_centered()
        {
            return NativeCalls.godot_icall_0_14(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_offset");

        /// <summary>
        /// Set the offset of the sprite in the node origin. Position varies depending on whether it is centered or not.
        /// </summary>
        public void set_offset(Vector2 offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_9, Object.GetPtr(this), ref offset);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_offset");

        /// <summary>
        /// Return the offset of the sprite in the node origin.
        /// </summary>
        public Vector2 get_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_10, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_h");

        /// <summary>
        /// If true, sprite is flipped horizontally.
        /// </summary>
        public void set_flip_h(bool flip_h)
        {
            NativeCalls.godot_icall_1_13(method_bind_11, Object.GetPtr(this), flip_h);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_h");

        /// <summary>
        /// Return true if sprite is flipped horizontally.
        /// </summary>
        public bool is_flipped_h()
        {
            return NativeCalls.godot_icall_0_14(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flip_v");

        /// <summary>
        /// If true, sprite is flipped vertically.
        /// </summary>
        public void set_flip_v(bool flip_v)
        {
            NativeCalls.godot_icall_1_13(method_bind_13, Object.GetPtr(this), flip_v);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_flipped_v");

        /// <summary>
        /// Return true if sprite is flipped vertically.
        /// </summary>
        public bool is_flipped_v()
        {
            return NativeCalls.godot_icall_0_14(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_frame");

        /// <summary>
        /// Set the visible sprite frame index (from the list of frames inside the [SpriteFrames] resource).
        /// </summary>
        public void set_frame(int frame)
        {
            NativeCalls.godot_icall_1_4(method_bind_15, Object.GetPtr(this), frame);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_frame");

        /// <summary>
        /// Return the visible frame index.
        /// </summary>
        public int get_frame()
        {
            return NativeCalls.godot_icall_0_0(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_modulate");

        /// <summary>
        /// Change the color modulation (multiplication) for this sprite.
        /// </summary>
        public void set_modulate(Color modulate)
        {
            NativeCalls.godot_icall_1_25(method_bind_17, Object.GetPtr(this), ref modulate);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_modulate");

        /// <summary>
        /// Return the color modulation for this sprite.
        /// </summary>
        public Color get_modulate()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_18, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
