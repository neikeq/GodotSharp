using System;

namespace GodotEngine
{
    public class CubeMap : Resource
    {
        public const int STORAGE_RAW = 0;
        public const int STORAGE_COMPRESS_LOSSY = 1;
        public const int STORAGE_COMPRESS_LOSSLESS = 2;
        public const int SIDE_LEFT = 0;
        public const int SIDE_RIGHT = 1;
        public const int SIDE_BOTTOM = 2;
        public const int SIDE_TOP = 3;
        public const int SIDE_FRONT = 4;
        public const int SIDE_BACK = 5;
        public const int FLAG_MIPMAPS = 1;
        public const int FLAG_REPEAT = 2;
        public const int FLAG_FILTER = 4;
        public const int FLAGS_DEFAULT = 7;

        private const string nativeName = "CubeMap";

        public CubeMap() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CubeMap_Ctor(this);
        }

        internal CubeMap(bool memoryOwn) : base(memoryOwn) {}

        ~CubeMap()
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
                    NativeCalls.godot_icall_CubeMap_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_width");

        public int get_width()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, Object.GetPtr(this));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        public int get_height()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_rid");

        public RID get_rid()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_2, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_flags");

        public void set_flags(int flags)
        {
            NativeCalls.godot_icall_1_4(method_bind_3, Object.GetPtr(this), flags);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_flags");

        public int get_flags()
        {
            return NativeCalls.godot_icall_0_0(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_side");

        public void set_side(int side, Image image)
        {
            NativeCalls.godot_icall_2_187(method_bind_5, Object.GetPtr(this), side, Image.GetPtr(image));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_side");

        public Image get_side(int side)
        {
            IntPtr ret = NativeCalls.godot_icall_1_188(method_bind_6, Object.GetPtr(this), side);
            return new Image(ret);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_storage");

        public void set_storage(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_7, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_storage");

        public int get_storage()
        {
            return NativeCalls.godot_icall_0_0(method_bind_8, Object.GetPtr(this));
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_lossy_storage_quality");

        public void set_lossy_storage_quality(float quality)
        {
            NativeCalls.godot_icall_1_45(method_bind_9, Object.GetPtr(this), quality);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_lossy_storage_quality");

        public float get_lossy_storage_quality()
        {
            return NativeCalls.godot_icall_0_46(method_bind_10, Object.GetPtr(this));
        }
    }
}
