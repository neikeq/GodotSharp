using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Animation Player that uses a node graph for the blending. This kind of player is very useful when animating character or other skeleton based rigs, because it can combine several animations to form a desired pose.
    /// </summary>
    public class AnimationTreePlayer : Node
    {
        public const int NODE_OUTPUT = 0;
        public const int NODE_ANIMATION = 1;
        public const int NODE_ONESHOT = 2;
        public const int NODE_MIX = 3;
        public const int NODE_BLEND2 = 4;
        public const int NODE_BLEND3 = 5;
        public const int NODE_BLEND4 = 6;
        public const int NODE_TIMESCALE = 7;
        public const int NODE_TIMESEEK = 8;
        public const int NODE_TRANSITION = 9;

        private const string nativeName = "AnimationTreePlayer";

        public AnimationTreePlayer() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AnimationTreePlayer_Ctor(this);
        }

        internal AnimationTreePlayer(bool memoryOwn) : base(memoryOwn) {}

        ~AnimationTreePlayer()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_node");

        /// <summary>
        /// Add a node of a given type in the graph with given id.
        /// </summary>
        public void add_node(int type, string id)
        {
            NativeCalls.godot_icall_2_61(method_bind_0, Object.GetPtr(this), type, id);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_exists");

        /// <summary>
        /// Check if a node exists (by name).
        /// </summary>
        public bool node_exists(string node)
        {
            return NativeCalls.godot_icall_1_49(method_bind_1, Object.GetPtr(this), node);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_rename");

        /// <summary>
        /// Rename a node in the graph.
        /// </summary>
        public int node_rename(string node, string new_name)
        {
            return NativeCalls.godot_icall_2_62(method_bind_2, Object.GetPtr(this), node, new_name);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_type");

        /// <summary>
        /// Get the node type, will return from NODE_* enum.
        /// </summary>
        public int node_get_type(string id)
        {
            return NativeCalls.godot_icall_1_63(method_bind_3, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_input_count");

        /// <summary>
        /// Return the input count for a given node. Different types of nodes have different amount of inputs.
        /// </summary>
        public int node_get_input_count(string id)
        {
            return NativeCalls.godot_icall_1_63(method_bind_4, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_input_source");

        /// <summary>
        /// Return the input source for a given node input.
        /// </summary>
        public string node_get_input_source(string id, int idx)
        {
            return NativeCalls.godot_icall_2_64(method_bind_5, Object.GetPtr(this), id, idx);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_node_set_animation");

        /// <summary>
        /// Set the animation for an animation node.
        /// </summary>
        public void animation_node_set_animation(string id, Animation animation)
        {
            NativeCalls.godot_icall_2_65(method_bind_6, Object.GetPtr(this), id, Object.GetPtr(animation));
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_node_get_animation");

        public Animation animation_node_get_animation(string id)
        {
            return NativeCalls.godot_icall_1_50(method_bind_7, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_node_set_master_animation");

        public void animation_node_set_master_animation(string id, string source)
        {
            NativeCalls.godot_icall_2_48(method_bind_8, Object.GetPtr(this), id, source);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_node_get_master_animation");

        public string animation_node_get_master_animation(string id)
        {
            return NativeCalls.godot_icall_1_52(method_bind_9, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "animation_node_set_filter_path");

        public void animation_node_set_filter_path(string id, NodePath path, bool enable)
        {
            NativeCalls.godot_icall_3_66(method_bind_10, Object.GetPtr(this), id, NodePath.GetPtr(path), enable);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_fadein_time");

        public void oneshot_node_set_fadein_time(string id, float time_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_11, Object.GetPtr(this), id, time_sec);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_get_fadein_time");

        public float oneshot_node_get_fadein_time(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_12, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_fadeout_time");

        public void oneshot_node_set_fadeout_time(string id, float time_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_13, Object.GetPtr(this), id, time_sec);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_get_fadeout_time");

        public float oneshot_node_get_fadeout_time(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_14, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_autorestart");

        public void oneshot_node_set_autorestart(string id, bool enable)
        {
            NativeCalls.godot_icall_2_68(method_bind_15, Object.GetPtr(this), id, enable);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_autorestart_delay");

        public void oneshot_node_set_autorestart_delay(string id, float delay_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_16, Object.GetPtr(this), id, delay_sec);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_autorestart_random_delay");

        public void oneshot_node_set_autorestart_random_delay(string id, float rand_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_17, Object.GetPtr(this), id, rand_sec);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_has_autorestart");

        public bool oneshot_node_has_autorestart(string id)
        {
            return NativeCalls.godot_icall_1_49(method_bind_18, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_get_autorestart_delay");

        public float oneshot_node_get_autorestart_delay(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_19, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_get_autorestart_random_delay");

        public float oneshot_node_get_autorestart_random_delay(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_20, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_start");

        public void oneshot_node_start(string id)
        {
            NativeCalls.godot_icall_1_18(method_bind_21, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_stop");

        public void oneshot_node_stop(string id)
        {
            NativeCalls.godot_icall_1_18(method_bind_22, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_is_active");

        public bool oneshot_node_is_active(string id)
        {
            return NativeCalls.godot_icall_1_49(method_bind_23, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "oneshot_node_set_filter_path");

        public void oneshot_node_set_filter_path(string id, NodePath path, bool enable)
        {
            NativeCalls.godot_icall_3_66(method_bind_24, Object.GetPtr(this), id, NodePath.GetPtr(path), enable);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mix_node_set_amount");

        public void mix_node_set_amount(string id, float ratio)
        {
            NativeCalls.godot_icall_2_56(method_bind_25, Object.GetPtr(this), id, ratio);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "mix_node_get_amount");

        public float mix_node_get_amount(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_26, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend2_node_set_amount");

        public void blend2_node_set_amount(string id, float blend)
        {
            NativeCalls.godot_icall_2_56(method_bind_27, Object.GetPtr(this), id, blend);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend2_node_get_amount");

        public float blend2_node_get_amount(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_28, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend2_node_set_filter_path");

        public void blend2_node_set_filter_path(string id, NodePath path, bool enable)
        {
            NativeCalls.godot_icall_3_66(method_bind_29, Object.GetPtr(this), id, NodePath.GetPtr(path), enable);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend3_node_set_amount");

        public void blend3_node_set_amount(string id, float blend)
        {
            NativeCalls.godot_icall_2_56(method_bind_30, Object.GetPtr(this), id, blend);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend3_node_get_amount");

        public float blend3_node_get_amount(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_31, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend4_node_set_amount");

        public void blend4_node_set_amount(string id, Vector2 blend)
        {
            NativeCalls.godot_icall_2_69(method_bind_32, Object.GetPtr(this), id, ref blend);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "blend4_node_get_amount");

        public Vector2 blend4_node_get_amount(string id)
        {
            object ret = NativeCalls.godot_icall_1_70(method_bind_33, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "timescale_node_set_scale");

        public void timescale_node_set_scale(string id, float scale)
        {
            NativeCalls.godot_icall_2_56(method_bind_34, Object.GetPtr(this), id, scale);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "timescale_node_get_scale");

        public float timescale_node_get_scale(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_35, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "timeseek_node_seek");

        public void timeseek_node_seek(string id, float pos_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_36, Object.GetPtr(this), id, pos_sec);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_set_input_count");

        public void transition_node_set_input_count(string id, int count)
        {
            NativeCalls.godot_icall_2_71(method_bind_37, Object.GetPtr(this), id, count);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_get_input_count");

        public int transition_node_get_input_count(string id)
        {
            return NativeCalls.godot_icall_1_63(method_bind_38, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_delete_input");

        public void transition_node_delete_input(string id, int input_idx)
        {
            NativeCalls.godot_icall_2_71(method_bind_39, Object.GetPtr(this), id, input_idx);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_set_input_auto_advance");

        public void transition_node_set_input_auto_advance(string id, int input_idx, bool enable)
        {
            NativeCalls.godot_icall_3_72(method_bind_40, Object.GetPtr(this), id, input_idx, enable);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_has_input_auto_advance");

        public bool transition_node_has_input_auto_advance(string id, int input_idx)
        {
            return NativeCalls.godot_icall_2_73(method_bind_41, Object.GetPtr(this), id, input_idx);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_set_xfade_time");

        public void transition_node_set_xfade_time(string id, float time_sec)
        {
            NativeCalls.godot_icall_2_56(method_bind_42, Object.GetPtr(this), id, time_sec);
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_get_xfade_time");

        public float transition_node_get_xfade_time(string id)
        {
            return NativeCalls.godot_icall_1_67(method_bind_43, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_set_current");

        public void transition_node_set_current(string id, int input_idx)
        {
            NativeCalls.godot_icall_2_71(method_bind_44, Object.GetPtr(this), id, input_idx);
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "transition_node_get_current");

        public int transition_node_get_current(string id)
        {
            return NativeCalls.godot_icall_1_63(method_bind_45, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_set_pos");

        public void node_set_pos(string id, Vector2 screen_pos)
        {
            NativeCalls.godot_icall_2_69(method_bind_46, Object.GetPtr(this), id, ref screen_pos);
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "node_get_pos");

        public Vector2 node_get_pos(string id)
        {
            object ret = NativeCalls.godot_icall_1_70(method_bind_47, Object.GetPtr(this), id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_node");

        public void remove_node(string id)
        {
            NativeCalls.godot_icall_1_18(method_bind_48, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_49 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "connect");

        public int connect(string id, string dst_id, int dst_input_idx)
        {
            return NativeCalls.godot_icall_3_74(method_bind_49, Object.GetPtr(this), id, dst_id, dst_input_idx);
        }

        private IntPtr method_bind_50 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_connected");

        public bool is_connected(string id, string dst_id, int dst_input_idx)
        {
            return NativeCalls.godot_icall_3_75(method_bind_50, Object.GetPtr(this), id, dst_id, dst_input_idx);
        }

        private IntPtr method_bind_51 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "disconnect");

        public void disconnect(string id, int dst_input_idx)
        {
            NativeCalls.godot_icall_2_71(method_bind_51, Object.GetPtr(this), id, dst_input_idx);
        }

        private IntPtr method_bind_52 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_active");

        public void set_active(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_52, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_53 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_active");

        public bool is_active()
        {
            return NativeCalls.godot_icall_0_14(method_bind_53, Object.GetPtr(this));
        }

        private IntPtr method_bind_54 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_base_path");

        public void set_base_path(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_54, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_55 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_base_path");

        public NodePath get_base_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_55, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_56 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_master_player");

        public void set_master_player(NodePath nodepath)
        {
            NativeCalls.godot_icall_1_57(method_bind_56, Object.GetPtr(this), NodePath.GetPtr(nodepath));
        }

        private IntPtr method_bind_57 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_master_player");

        public NodePath get_master_player()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_57, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_58 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_list");

        public List<string> get_node_list()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_58, Object.GetPtr(this));
            return new List<string>(ret);
        }

        private IntPtr method_bind_59 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_animation_process_mode");

        public void set_animation_process_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_59, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_60 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_animation_process_mode");

        public int get_animation_process_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_60, Object.GetPtr(this));
        }

        private IntPtr method_bind_61 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "advance");

        public void advance(float delta)
        {
            NativeCalls.godot_icall_1_45(method_bind_61, Object.GetPtr(this), delta);
        }

        private IntPtr method_bind_62 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "reset");

        public void reset()
        {
            NativeCalls.godot_icall_0_7(method_bind_62, Object.GetPtr(this));
        }

        private IntPtr method_bind_63 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "recompute_caches");

        public void recompute_caches()
        {
            NativeCalls.godot_icall_0_7(method_bind_63, Object.GetPtr(this));
        }
    }
}
