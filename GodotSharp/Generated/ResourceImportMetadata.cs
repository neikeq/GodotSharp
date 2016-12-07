using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class ResourceImportMetadata : Reference
    {
        private const string nativeName = "ResourceImportMetadata";

        public ResourceImportMetadata() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ResourceImportMetadata_Ctor(this);
        }

        internal ResourceImportMetadata(bool memoryOwn) : base(memoryOwn) {}

        ~ResourceImportMetadata()
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
                    NativeCalls.godot_icall_ResourceImportMetadata_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editor");

        public void set_editor(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_0, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_editor");

        public string get_editor()
        {
            return NativeCalls.godot_icall_0_19(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_source");

        public void add_source(string path, string md5 = "")
        {
            NativeCalls.godot_icall_2_48(method_bind_2, Object.GetPtr(this), path, md5);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_source_path");

        public string get_source_path(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_3, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_source_md5");

        public string get_source_md5(int idx)
        {
            return NativeCalls.godot_icall_1_116(method_bind_4, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_source_md5");

        public void set_source_md5(int idx, string md5)
        {
            NativeCalls.godot_icall_2_61(method_bind_5, Object.GetPtr(this), idx, md5);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_source");

        public void remove_source(int idx)
        {
            NativeCalls.godot_icall_1_4(method_bind_6, Object.GetPtr(this), idx);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_source_count");

        public int get_source_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_option");

        public void set_option(string key, object @value)
        {
            NativeCalls.godot_icall_2_146(method_bind_8, Object.GetPtr(this), key, @value);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_option");

        public void get_option(string key)
        {
            NativeCalls.godot_icall_1_18(method_bind_9, Object.GetPtr(this), key);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_options");

        public List<string> get_options()
        {
            string[] ret = NativeCalls.godot_icall_0_51(method_bind_10, Object.GetPtr(this));
            return new List<string>(ret);
        }
    }
}
