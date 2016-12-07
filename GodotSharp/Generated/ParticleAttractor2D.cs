using System;

namespace GodotEngine
{
    public class ParticleAttractor2D : Node2D
    {
        private const string nativeName = "ParticleAttractor2D";

        public ParticleAttractor2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_ParticleAttractor2D_Ctor(this);
        }

        internal ParticleAttractor2D(bool memoryOwn) : base(memoryOwn) {}

        ~ParticleAttractor2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled");

        public void set_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabled");

        public bool is_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_radius");

        public void set_radius(float radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_2, Object.GetPtr(this), radius);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_radius");

        public float get_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_disable_radius");

        public void set_disable_radius(float radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_4, Object.GetPtr(this), radius);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_disable_radius");

        public float get_disable_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gravity");

        public void set_gravity(float gravity)
        {
            NativeCalls.godot_icall_1_45(method_bind_6, Object.GetPtr(this), gravity);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gravity");

        public float get_gravity()
        {
            return NativeCalls.godot_icall_0_46(method_bind_7, Object.GetPtr(this));
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_absorption");

        public void set_absorption(float absorption)
        {
            NativeCalls.godot_icall_1_45(method_bind_8, Object.GetPtr(this), absorption);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_absorption");

        public float get_absorption()
        {
            return NativeCalls.godot_icall_0_46(method_bind_9, Object.GetPtr(this));
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_particles_path");

        public void set_particles_path(NodePath path)
        {
            NativeCalls.godot_icall_1_57(method_bind_10, Object.GetPtr(this), NodePath.GetPtr(path));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_particles_path");

        public NodePath get_particles_path()
        {
            IntPtr ret = NativeCalls.godot_icall_0_58(method_bind_11, Object.GetPtr(this));
            return new NodePath(ret);
        }
    }
}
