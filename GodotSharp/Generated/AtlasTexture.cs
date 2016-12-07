using System;

namespace GodotEngine
{
    public class AtlasTexture : Texture
    {
        private const string nativeName = "AtlasTexture";

        public AtlasTexture() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_AtlasTexture_Ctor(this);
        }

        internal AtlasTexture(bool memoryOwn) : base(memoryOwn) {}

        ~AtlasTexture()
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
                    NativeCalls.godot_icall_AtlasTexture_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_atlas");

        public void set_atlas(Texture atlas)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(atlas));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_atlas");

        public Texture get_atlas()
        {
            return NativeCalls.godot_icall_0_80(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_region");

        public void set_region(Rect2 region)
        {
            NativeCalls.godot_icall_1_81(method_bind_2, Object.GetPtr(this), ref region);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_region");

        public Rect2 get_region()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_3, Object.GetPtr(this));
            return (Rect2)ret;
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_margin");

        public void set_margin(Rect2 margin)
        {
            NativeCalls.godot_icall_1_81(method_bind_4, Object.GetPtr(this), ref margin);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_margin");

        public Rect2 get_margin()
        {
            object ret = NativeCalls.godot_icall_0_82(method_bind_5, Object.GetPtr(this));
            return (Rect2)ret;
        }
    }
}
