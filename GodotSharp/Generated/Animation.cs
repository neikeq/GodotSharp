using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// An Animation resource contains data used to animate everything in the engine. Animations are divided into tracks, and each track must be linked to a node. The state of that node can be changed through time, by adding timed keys (events) to the track.
    /// Animations are just data containers, and must be added to odes such as an [AnimationPlayer] or [AnimationTreePlayer] to be played back.
    /// </summary>
    public class Animation : Resource
    {
        /// <summary>
        /// Value tracks set values in node properties, but only those which can be Interpolated.
        /// </summary>
        public const int TYPE_VALUE = 0;
        /// <summary>
        /// Transform tracks are used to change node local transforms or skeleton pose bones. Transitions are Interpolated.
        /// </summary>
        public const int TYPE_TRANSFORM = 1;
        /// <summary>
        /// Method tracks call functions with given arguments per key.
        /// </summary>
        public const int TYPE_METHOD = 2;
        /// <summary>
        /// No interpolation (nearest value).
        /// </summary>
        public const int INTERPOLATION_NEAREST = 0;
        /// <summary>
        /// Linear interpolation.
        /// </summary>
        public const int INTERPOLATION_LINEAR = 1;
        /// <summary>
        /// Cubic interpolation.
        /// </summary>
        public const int INTERPOLATION_CUBIC = 2;
        public const int UPDATE_CONTINUOUS = 0;
        public const int UPDATE_DISCRETE = 1;
        public const int UPDATE_TRIGGER = 2;

        private const string nativeName = "Animation";

        public Animation() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Animation_Ctor(this);
        }

        internal Animation(bool memoryOwn) : base(memoryOwn) {}

        ~Animation()
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
                    NativeCalls.godot_icall_Animation_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_track");

        /// <summary>
        /// Add a track to the Animation. The track type must be specified as any of the values in the TYPE_* enumeration.
        /// </summary>
        public int add_track(int type, int at_pos = -1)
        {
            return NativeCalls.godot_icall_2_27(method_bind_0, Object.GetPtr(this), type, at_pos);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_track");

        /// <summary>
        /// Remove a track by specifying the track index.
        /// </summary>
        public void remove_track(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_1, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_track_count");

        /// <summary>
        /// Return the amount of tracks in the animation.
        /// </summary>
        public int get_track_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_type");

        /// <summary>
        /// Get the type of a track.
        /// </summary>
        public int track_get_type(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_path");

        /// <summary>
        /// Get the path of a track. for more information on the path format, see [method track_set_path]
        /// </summary>
        public NodePath track_get_path(int idx)
        {
            IntPtr ret = NativeCalls.godot_icall_1_29(method_bind_4, Object.GetPtr(this), idx);
            return new NodePath(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_set_path");

        /// <summary>
        /// Set the path of a track. Paths must be valid scene-tree paths to a node, and must be specified starting from the parent node of the node that will reproduce the animation. Tracks that control properties or bones must append their name after the path, separated by ":". Example: "character/skeleton:ankle" or "character/mesh:transform/local"
        /// </summary>
        public void track_set_path(int idx, NodePath path)
        {
            NativeCalls.godot_icall_2_30(method_bind_5, Object.GetPtr(this), idx, NodePath.GetPtr(path));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "find_track");

        /// <summary>
        /// Return the index of the specified track. If the track is not found, return -1.
        /// </summary>
        public int find_track(NodePath path)
        {
            return NativeCalls.godot_icall_1_31(method_bind_6, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_move_up");

        /// <summary>
        /// Move a track up.
        /// </summary>
        public void track_move_up(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_move_down");

        /// <summary>
        /// Move a track down.
        /// </summary>
        public void track_move_down(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_8, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_set_imported");

        /// <summary>
        /// Set the given track as imported or not.
        /// </summary>
        public void track_set_imported(int idx, bool imported)
        {
            NativeCalls.godot_icall_2_32(method_bind_9, Object.GetPtr(this), idx, imported);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_is_imported");

        /// <summary>
        /// Return true if the given track is imported. Else, return false.
        /// </summary>
        public bool track_is_imported(int idx)
        {
            return NativeCalls.godot_icall_1_33(method_bind_10, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transform_track_insert_key");

        /// <summary>
        /// Insert a transform key for a transform track.
        /// </summary>
        public int transform_track_insert_key(int idx, float time, Vector3 loc, Quat rot, Vector3 scale)
        {
            return NativeCalls.godot_icall_5_34(method_bind_11, Object.GetPtr(this), idx, time, ref loc, ref rot, ref scale);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_insert_key");

        /// <summary>
        /// Insert a generic key in a given track.
        /// </summary>
        public void track_insert_key(int idx, float time, object key, float transition = 1)
        {
            NativeCalls.godot_icall_4_35(method_bind_12, Object.GetPtr(this), idx, time, key, transition);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_remove_key");

        /// <summary>
        /// Remove a key by index in a given track.
        /// </summary>
        public void track_remove_key(int idx, int key_idx)
        {
            NativeCalls.godot_icall_2_5(method_bind_13, Object.GetPtr(this), idx, key_idx);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_remove_key_at_pos");

        /// <summary>
        /// Remove a key by position (seconds) in a given track.
        /// </summary>
        public void track_remove_key_at_pos(int idx, float pos)
        {
            NativeCalls.godot_icall_2_36(method_bind_14, Object.GetPtr(this), idx, pos);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_set_key_value");

        /// <summary>
        /// Set the value of an existing key.
        /// </summary>
        public void track_set_key_value(int idx, int key, object @value)
        {
            NativeCalls.godot_icall_3_37(method_bind_15, Object.GetPtr(this), idx, key, @value);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_set_key_transition");

        /// <summary>
        /// Set the transition curve (easing) for a specific key (see built-in math function "ease").
        /// </summary>
        public void track_set_key_transition(int idx, int key_idx, float transition)
        {
            NativeCalls.godot_icall_3_38(method_bind_16, Object.GetPtr(this), idx, key_idx, transition);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_key_transition");

        /// <summary>
        /// Return the transition curve (easing) for a specific key (see built-in math function "ease").
        /// </summary>
        public float track_get_key_transition(int idx, int key_idx)
        {
            return NativeCalls.godot_icall_2_39(method_bind_17, Object.GetPtr(this), idx, key_idx);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_key_count");

        /// <summary>
        /// Return the amount of keys in a given track.
        /// </summary>
        public int track_get_key_count(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_18, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_key_value");

        /// <summary>
        /// Return the value of a given key in a given track.
        /// </summary>
        public void track_get_key_value(int idx, int key_idx)
        {
            NativeCalls.godot_icall_2_5(method_bind_19, Object.GetPtr(this), idx, key_idx);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_key_time");

        /// <summary>
        /// Return the time at which the key is located.
        /// </summary>
        public float track_get_key_time(int idx, int key_idx)
        {
            return NativeCalls.godot_icall_2_39(method_bind_20, Object.GetPtr(this), idx, key_idx);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_find_key");

        /// <summary>
        /// Find the key index by time in a given track. Optionally, only find it if the exact time is given.
        /// </summary>
        public int track_find_key(int idx, float time, bool exact = false)
        {
            return NativeCalls.godot_icall_3_40(method_bind_21, Object.GetPtr(this), idx, time, exact);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_set_interpolation_type");

        /// <summary>
        /// Set the interpolation type of a given track, from the INTERPOLATION_* enum.
        /// </summary>
        public void track_set_interpolation_type(int idx, int interpolation)
        {
            NativeCalls.godot_icall_2_5(method_bind_22, Object.GetPtr(this), idx, interpolation);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "track_get_interpolation_type");

        /// <summary>
        /// Return the interpolation type of a given track, from the INTERPOLATION_* enum.
        /// </summary>
        public int track_get_interpolation_type(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_23, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transform_track_interpolate");

        /// <summary>
        /// Return the interpolated value of a transform track at a given time (in seconds). An array consisting of 3 elements: position ([Vector3]), rotation ([Quat]) and scale ([Vector3]).
        /// </summary>
        public List<object> transform_track_interpolate(int idx, float time_sec)
        {
            object[] ret = NativeCalls.godot_icall_2_41(method_bind_24, Object.GetPtr(this), idx, time_sec);
            return new List<object>(ret);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "value_track_set_update_mode");

        public void value_track_set_update_mode(int idx, int mode)
        {
            NativeCalls.godot_icall_2_5(method_bind_25, Object.GetPtr(this), idx, mode);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "value_track_get_update_mode");

        public int value_track_get_update_mode(int idx)
        {
            return NativeCalls.godot_icall_1_28(method_bind_26, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "value_track_get_key_indices");

        /// <summary>
        /// Return all the key indices of a value track, given a position and delta time.
        /// </summary>
        public List<int> value_track_get_key_indices(int idx, float time_sec, float delta)
        {
            int[] ret = NativeCalls.godot_icall_3_42(method_bind_27, Object.GetPtr(this), idx, time_sec, delta);
            return new List<int>(ret);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "method_track_get_key_indices");

        /// <summary>
        /// Return all the key indices of a method track, given a position and delta time.
        /// </summary>
        public List<int> method_track_get_key_indices(int idx, float time_sec, float delta)
        {
            int[] ret = NativeCalls.godot_icall_3_42(method_bind_28, Object.GetPtr(this), idx, time_sec, delta);
            return new List<int>(ret);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "method_track_get_name");

        /// <summary>
        /// Return the method name of a method track.
        /// </summary>
        public string method_track_get_name(int idx, int key_idx)
        {
            return NativeCalls.godot_icall_2_43(method_bind_29, Object.GetPtr(this), idx, key_idx);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "method_track_get_params");

        /// <summary>
        /// Return the arguments values to be called on a method track for a given key in a given track.
        /// </summary>
        public List<object> method_track_get_params(int idx, int key_idx)
        {
            object[] ret = NativeCalls.godot_icall_2_44(method_bind_30, Object.GetPtr(this), idx, key_idx);
            return new List<object>(ret);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_length");

        /// <summary>
        /// Set the total length of the animation (in seconds). Note that length is not delimited by the last key, as this one may be before or after the end to ensure correct interpolation and looping.
        /// </summary>
        public void set_length(float time_sec)
        {
            NativeCalls.godot_icall_1_45(method_bind_31, Object.GetPtr(this), time_sec);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_length");

        /// <summary>
        /// Return the total length of the animation (in seconds).
        /// </summary>
        public float get_length()
        {
            return NativeCalls.godot_icall_0_46(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_loop");

        /// <summary>
        /// Set a flag indicating that the animation must loop. This is uses for correct interpolation of animation cycles, and for hinting the player that it must restart the animation.
        /// </summary>
        public void set_loop(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_33, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_loop");

        /// <summary>
        /// Return whether the animation has the loop flag set.
        /// </summary>
        public bool has_loop()
        {
            return NativeCalls.godot_icall_0_14(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_step");

        /// <summary>
        /// Set the animation step value.
        /// </summary>
        public void set_step(float size_sec)
        {
            NativeCalls.godot_icall_1_45(method_bind_35, Object.GetPtr(this), size_sec);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_step");

        /// <summary>
        /// Get the animation step value.
        /// </summary>
        public float get_step()
        {
            return NativeCalls.godot_icall_0_46(method_bind_36, Object.GetPtr(this));
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the animation (clear all tracks and reset all).
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_37, Object.GetPtr(this));
        }
    }
}
