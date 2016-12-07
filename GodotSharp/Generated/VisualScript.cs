using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class VisualScript : Script
    {
        private const string nativeName = "VisualScript";

        public VisualScript() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_VisualScript_Ctor(this);
        }

        internal VisualScript(bool memoryOwn) : base(memoryOwn) {}

        ~VisualScript()
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
                    NativeCalls.godot_icall_VisualScript_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_function");

        public void add_function(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_function");

        public bool has_function(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_1, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_function");

        public void remove_function(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_2, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename_function");

        public void rename_function(string name, string new_name)
        {
            NativeCalls.godot_icall_2_48(method_bind_3, Object.GetPtr(this), name, new_name);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_function_scroll");

        public void set_function_scroll(string ofs, Vector2 arg1)
        {
            NativeCalls.godot_icall_2_69(method_bind_4, Object.GetPtr(this), ofs, ref arg1);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_function_scroll");

        public Vector2 get_function_scroll(string arg0)
        {
            object ret = NativeCalls.godot_icall_1_70(method_bind_5, Object.GetPtr(this), arg0);
            return (Vector2)ret;
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_node");

        public void add_node(string func, int id, Object node, Nullable<Vector2> pos = null)
        {
            Vector2 pos_in = pos.HasValue ? pos.Value : new Vector2(0, 0);
            NativeCalls.godot_icall_4_515(method_bind_6, Object.GetPtr(this), func, id, Object.GetPtr(node), ref pos_in);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_node");

        public void remove_node(string func, int id)
        {
            NativeCalls.godot_icall_2_71(method_bind_7, Object.GetPtr(this), func, id);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_function_node_id");

        public int get_function_node_id(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_8, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node");

        public Object get_node(string func, int id)
        {
            return NativeCalls.godot_icall_2_466(method_bind_9, Object.GetPtr(this), func, id);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_node");

        public bool has_node(string func, int id)
        {
            return NativeCalls.godot_icall_2_73(method_bind_10, Object.GetPtr(this), func, id);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_node_pos");

        public void set_node_pos(string func, int id, Vector2 pos)
        {
            NativeCalls.godot_icall_3_516(method_bind_11, Object.GetPtr(this), func, id, ref pos);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_node_pos");

        public Vector2 get_node_pos(string func, int id)
        {
            object ret = NativeCalls.godot_icall_2_517(method_bind_12, Object.GetPtr(this), func, id);
            return (Vector2)ret;
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sequence_connect");

        public void sequence_connect(string func, int from_node, int from_output, int to_node)
        {
            NativeCalls.godot_icall_4_518(method_bind_13, Object.GetPtr(this), func, from_node, from_output, to_node);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sequence_disconnect");

        public void sequence_disconnect(string func, int from_node, int from_output, int to_node)
        {
            NativeCalls.godot_icall_4_518(method_bind_14, Object.GetPtr(this), func, from_node, from_output, to_node);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_sequence_connection");

        public bool has_sequence_connection(string func, int from_node, int from_output, int to_node)
        {
            return NativeCalls.godot_icall_4_519(method_bind_15, Object.GetPtr(this), func, from_node, from_output, to_node);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "data_connect");

        public void data_connect(string func, int from_node, int from_port, int to_node, int to_port)
        {
            NativeCalls.godot_icall_5_520(method_bind_16, Object.GetPtr(this), func, from_node, from_port, to_node, to_port);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "data_disconnect");

        public void data_disconnect(string func, int from_node, int from_port, int to_node, int to_port)
        {
            NativeCalls.godot_icall_5_520(method_bind_17, Object.GetPtr(this), func, from_node, from_port, to_node, to_port);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_data_connection");

        public bool has_data_connection(string func, int from_node, int from_port, int to_node, int to_port)
        {
            return NativeCalls.godot_icall_5_521(method_bind_18, Object.GetPtr(this), func, from_node, from_port, to_node, to_port);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_variable");

        public void add_variable(string name, object default_value = null, bool export = false)
        {
            NativeCalls.godot_icall_3_522(method_bind_19, Object.GetPtr(this), name, default_value, export);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_variable");

        public bool has_variable(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_20, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_variable");

        public void remove_variable(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_21, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_variable_default_value");

        public void set_variable_default_value(string name, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_22, Object.GetPtr(this), name, @value);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_variable_default_value");

        public void get_variable_default_value(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_23, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_variable_info");

        public void set_variable_info(string name, Dictionary<object, object> @value)
        {
            NativeCalls.godot_icall_2_523(method_bind_24, Object.GetPtr(this), name, @value);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_variable_info");

        public Dictionary<object, object> get_variable_info(string name)
        {
            return NativeCalls.godot_icall_1_524(method_bind_25, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_variable_export");

        public void set_variable_export(string name, bool enable)
        {
            NativeCalls.godot_icall_2_68(method_bind_26, Object.GetPtr(this), name, enable);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_variable_export");

        public bool get_variable_export(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_27, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename_variable");

        public void rename_variable(string name, string new_name)
        {
            NativeCalls.godot_icall_2_48(method_bind_28, Object.GetPtr(this), name, new_name);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_custom_signal");

        public void add_custom_signal(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_29, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_custom_signal");

        public bool has_custom_signal(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_30, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_add_argument");

        public void custom_signal_add_argument(string name, int type, string argname, int index = -1)
        {
            NativeCalls.godot_icall_4_236(method_bind_31, Object.GetPtr(this), name, type, argname, index);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_set_argument_type");

        public void custom_signal_set_argument_type(string name, int argidx, int type)
        {
            NativeCalls.godot_icall_3_400(method_bind_32, Object.GetPtr(this), name, argidx, type);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_get_argument_type");

        public int custom_signal_get_argument_type(string name, int argidx)
        {
            return NativeCalls.godot_icall_2_253(method_bind_33, Object.GetPtr(this), name, argidx);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_set_argument_name");

        public void custom_signal_set_argument_name(string name, int argidx, string argname)
        {
            NativeCalls.godot_icall_3_525(method_bind_34, Object.GetPtr(this), name, argidx, argname);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_get_argument_name");

        public string custom_signal_get_argument_name(string name, int argidx)
        {
            return NativeCalls.godot_icall_2_64(method_bind_35, Object.GetPtr(this), name, argidx);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_remove_argument");

        public void custom_signal_remove_argument(string argidx, int arg1)
        {
            NativeCalls.godot_icall_2_71(method_bind_36, Object.GetPtr(this), argidx, arg1);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_get_argument_count");

        public int custom_signal_get_argument_count(string name)
        {
            return NativeCalls.godot_icall_1_63(method_bind_37, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "custom_signal_swap_argument");

        public void custom_signal_swap_argument(string name, int argidx, int withidx)
        {
            NativeCalls.godot_icall_3_400(method_bind_38, Object.GetPtr(this), name, argidx, withidx);
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_custom_signal");

        public void remove_custom_signal(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_39, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "rename_custom_signal");

        public void rename_custom_signal(string name, string new_name)
        {
            NativeCalls.godot_icall_2_48(method_bind_40, Object.GetPtr(this), name, new_name);
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_instance_base_type");

        public void set_instance_base_type(string type)
        {
            NativeCalls.godot_icall_1_18(method_bind_41, Object.GetPtr(this), type);
        }
    }
}
