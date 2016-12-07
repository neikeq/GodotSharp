using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// An animation player is used for general purpose playback of [Animation] resources. It contains a dictionary of animations (referenced by name) and custom blend times between their transitions. Additionally, animations can be played and blended in different channels.
    /// </summary>
    public class AnimationPlayer : Node
    {
        /// <summary>
        /// Process animation on fixed process. This is specially useful when animating kinematic bodies.
        /// </summary>
        public const int ANIMATION_PROCESS_FIXED = 0;
        /// <summary>
        /// Process animation on idle process.
        /// </summary>
        public const int ANIMATION_PROCESS_IDLE = 1;

        private const string nativeName = "AnimationPlayer";

        public AnimationPlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AnimationPlayer_Ctor(this);
        }

        internal AnimationPlayer(bool memoryOwn) : base(memoryOwn) {}

        ~AnimationPlayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_animation");

        /// <summary>
        /// Add an animation resource to the player, which will be later referenced by the "name" argument.
        /// </summary>
        public int add_animation(string name, Animation animation)
        {
            return NativeCalls.godot_icall_2_47(method_bind_0, Object.GetPtr(this), name, Object.GetPtr(animation));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_animation");

        /// <summary>
        /// Remove an animation from the player (by supplying the same name used to add it).
        /// </summary>
        public void remove_animation(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_1, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename_animation");

        /// <summary>
        /// Rename an existing animation.
        /// </summary>
        public void rename_animation(string name, string newname)
        {
            NativeCalls.godot_icall_2_48(method_bind_2, Object.GetPtr(this), name, newname);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_animation");

        /// <summary>
        /// Request whether an [Animation] name exist within the player.
        /// </summary>
        public bool has_animation(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_3, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_animation");

        /// <summary>
        /// Get an [Animation] resource by requesting a name.
        /// </summary>
        public Animation get_animation(string name)
        {
            return NativeCalls.godot_icall_1_50(method_bind_4, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_animation_list");

        /// <summary>
        /// Get the list of names of the animations stored in the player.
        /// </summary>
        public List<string> get_animation_list()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_5, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_set_next");

        public void animation_set_next(string anim_from, string anim_to)
        {
            NativeCalls.godot_icall_2_48(method_bind_6, Object.GetPtr(this), anim_from, anim_to);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_get_next");

        public string animation_get_next(string anim_from)
        {
            return NativeCalls.godot_icall_1_52(method_bind_7, Object.GetPtr(this), anim_from);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_blend_time");

        /// <summary>
        /// Specify a blend time (in seconds) between two animations, referenced by their names.
        /// </summary>
        public void set_blend_time(string anim_from, string anim_to, float sec)
        {
            NativeCalls.godot_icall_3_53(method_bind_8, Object.GetPtr(this), anim_from, anim_to, sec);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_blend_time");

        /// <summary>
        /// Get the blend time between two animations, referenced by their names.
        /// </summary>
        public float get_blend_time(string anim_from, string anim_to)
        {
            return NativeCalls.godot_icall_2_54(method_bind_9, Object.GetPtr(this), anim_from, anim_to);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_default_blend_time");

        /// <summary>
        /// Set the default blend time between animations.
        /// </summary>
        public void set_default_blend_time(float sec)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), sec);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_default_blend_time");

        /// <summary>
        /// Return the default blend time between animations.
        /// </summary>
        public float get_default_blend_time()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play");

        /// <summary>
        /// Play a given animation by the animation name. Custom speed and blend times can be set. If custom speed is negative (-1), 'from_end' being true can play the animation backwards.
        /// </summary>
        public void play(string name = "", float custom_blend = -1, float custom_speed = 1f, bool from_end = false)
        {
            NativeCalls.godot_icall_4_55(method_bind_12, Object.GetPtr(this), name, custom_blend, custom_speed, from_end);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "play_backwards");

        /// <summary>
        /// Play a given animation by the animation name in reverse.
        /// </summary>
        public void play_backwards(string name = "", float custom_blend = -1)
        {
            NativeCalls.godot_icall_2_56(method_bind_13, Object.GetPtr(this), name, custom_blend);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop");

        /// <summary>
        /// Stop the currently playing animation.
        /// </summary>
        public void stop(bool reset = true)
        {
            NativeCalls.godot_icall_1_13(method_bind_14, Object.GetPtr(this), reset);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "stop_all");

        /// <summary>
        /// Stop playback of animations (deprecated).
        /// </summary>
        public void stop_all()
        {
            NativeCalls.godot_icall_0_7(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_playing");

        /// <summary>
        /// Return whether an animation is playing.
        /// </summary>
        public bool is_playing()
        {
            return NativeCalls.godot_icall_0_14(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_current_animation");

        /// <summary>
        /// Set the current animation (even if no playback occurs). Using set_current_animation() and set_active() are similar to calling play().
        /// </summary>
        public void set_current_animation(string anim)
        {
            NativeCalls.godot_icall_1_18(method_bind_17, Object.GetPtr(this), anim);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_animation");

        /// <summary>
        /// Return the name of the animation being played.
        /// </summary>
        public string get_current_animation()
        {
            return NativeCalls.godot_icall_0_19(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "queue");

        /// <summary>
        /// Queue an animation for playback once the current one is done.
        /// </summary>
        public void queue(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_19, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_queue");

        /// <summary>
        /// If animations are queued to play, clear them.
        /// </summary>
        public void clear_queue()
        {
            NativeCalls.godot_icall_0_7(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_active");

        /// <summary>
        /// Set the player as active (playing). If false, it will do nothing.
        /// </summary>
        public void set_active(bool active)
        {
            NativeCalls.godot_icall_1_13(method_bind_21, Object.GetPtr(this), active);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_active");

        /// <summary>
        /// Return true if the player is active.
        /// </summary>
        public bool is_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_speed");

        /// <summary>
        /// Set a speed scaling ratio in a given animation channel (or channel 0 if none is provided). Default ratio is [i]1[/i] (no scaling).
        /// </summary>
        public void set_speed(float speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_23, Object.GetPtr(this), speed);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_speed");

        /// <summary>
        /// Get the speed scaling ratio in a given animation channel (or channel 0 if none is provided). Default ratio is [i]1[/i] (no scaling).
        /// </summary>
        public float get_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_autoplay");

        /// <summary>
        /// Set the name of the animation that will be automatically played when the scene is loaded.
        /// </summary>
        public void set_autoplay(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_25, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_autoplay");

        /// <summary>
        /// Return the name of the animation that will be automatically played when the scene is loaded.
        /// </summary>
        public string get_autoplay()
        {
            return NativeCalls.godot_icall_0_19(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_root");

        /// <summary>
        /// AnimationPlayer resolves animation track paths from this node (which is relative to itself), by default root is "..", but it can be changed.
        /// </summary>
        public void set_root(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_27, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_root");

        /// <summary>
        /// Return path to root node (see [method set_root]).
        /// </summary>
        public NodePath get_root()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_28, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "seek");

        /// <summary>
        /// Seek the animation to a given position in time (in seconds). If 'update' is true, the animation will be updated too, otherwise it will be updated at process time.
        /// </summary>
        public void seek(float pos_sec, bool update = false)
        {
            NativeCalls.godot_icall_2_59(method_bind_29, Object.GetPtr(this), pos_sec, update);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_pos");

        /// <summary>
        /// Return the playback position (in seconds) in an animation channel (or channel 0 if none is provided).
        /// </summary>
        public float get_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_animation");

        /// <summary>
        /// Find an animation name by resource.
        /// </summary>
        public string find_animation(Animation animation)
        {
            return NativeCalls.godot_icall_1_60(method_bind_31, Object.GetPtr(this), Object.GetPtr(animation));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_caches");

        /// <summary>
        /// The animation player creates caches for faster access to the nodes it will animate. However, if a specific node is removed, it may not notice it, so clear_caches will force the player to search for the nodes again.
        /// </summary>
        public void clear_caches()
        {
            NativeCalls.godot_icall_0_7(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_animation_process_mode");

        /// <summary>
        /// Set the mode in which the animation player processes. By default, it processes on idle time (framerate dependent), but using fixed time works well for animating static collision bodies in 2D and 3D. See enum ANIMATION_PROCESS_*.
        /// </summary>
        public void set_animation_process_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_33, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_animation_process_mode");

        /// <summary>
        /// Return the mode in which the animation player processes. See [method set_animation_process_mode].
        /// </summary>
        public int get_animation_process_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_animation_pos");

        /// <summary>
        /// Get the position (in seconds) of the currently being played animation.
        /// </summary>
        public float get_current_animation_pos()
        {
            return NativeCalls.godot_icall_0_46(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_current_animation_length");

        /// <summary>
        /// Get the length (in seconds) of the currently being played animation.
        /// </summary>
        public float get_current_animation_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "advance");

        /// <summary>
        /// Used to skip ahead or skip back in an animation. Delta is the time in seconds to skip.
        /// </summary>
        public void advance(float delta)
        {
            NativeCalls.godot_icall_1_45(method_bind_37, Object.GetPtr(this), delta);
        }
    }
}
