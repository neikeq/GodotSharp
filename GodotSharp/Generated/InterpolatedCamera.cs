using System;

namespace GodotEngine
{
    public class InterpolatedCamera : Camera
    {
        private const string nativeName = "InterpolatedCamera";

        public InterpolatedCamera() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_InterpolatedCamera_Ctor(this);
        }

        internal InterpolatedCamera(bool memoryOwn) : base(memoryOwn) {}

        ~InterpolatedCamera()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_target_path");

        public void set_target_path(NodePath target_path)
        {
            NativeCalls.godot_icall_1_57(method_bind_0, Object.GetPtr(this), NodePath.GetPtr(target_path));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_target_path");

        public NodePath get_target_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_1, Object.GetPtr(this));
            return new NodePath(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_target");

        public void set_target(Camera target)
        {
            NativeCalls.godot_icall_1_20(method_bind_2, Object.GetPtr(this), Object.GetPtr(target));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_speed");

        public void set_speed(float speed)
        {
            NativeCalls.godot_icall_1_45(method_bind_3, Object.GetPtr(this), speed);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_speed");

        public float get_speed()
        {
            return NativeCalls.godot_icall_0_46(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_interpolation_enabled");

        public void set_interpolation_enabled(bool target_path)
        {
            NativeCalls.godot_icall_1_13(method_bind_5, Object.GetPtr(this), target_path);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_interpolation_enabled");

        public bool is_interpolation_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_6, Object.GetPtr(this));
        }
    }
}
