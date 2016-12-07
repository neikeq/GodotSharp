using System;

namespace GodotEngine
{
    /// <summary>
    /// Class that has everything pertaining to a 2D world. A physics space, a visual scenario and a sound space. 2D nodes register their resources into the current 2D world.
    /// </summary>
    public class World2D : Resource
    {
        private const string nativeName = "World2D";

        public World2D() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_World2D_Ctor(this);
        }

        internal World2D(bool memoryOwn) : base(memoryOwn) {}

        ~World2D()
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
                    NativeCalls.godot_icall_World2D_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_canvas");

        /// <summary>
        /// Retrieve the [RID] of this world's canvas resource. Used by the [VisualServer] for 2D drawing.
        /// </summary>
        public RID get_canvas()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_0, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_space");

        /// <summary>
        /// Retrieve the [RID] of this world's physics space resource. Used by the [Physics2DServer] for 2D physics, treating it as both a space and an area.
        /// </summary>
        public RID get_space()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_1, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sound_space");

        /// <summary>
        /// Retrieve the [RID] of this world's sound space resource. Used by the [SpatialSound2DServer] for 2D spatial audio.
        /// </summary>
        public RID get_sound_space()
        {
            IntPtr ret = NativeCalls.godot_icall_0_92(method_bind_2, Object.GetPtr(this));
            return new RID(ret);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_direct_space_state");

        /// <summary>
        /// Retrieve the state of this world's physics space. This allows arbitrary querying for collision.
        /// </summary>
        public Physics2DDirectSpaceState get_direct_space_state()
        {
            return NativeCalls.godot_icall_0_345(method_bind_3, Object.GetPtr(this));
        }
    }
}
