using System;

namespace GodotEngine
{
    /// <summary>
    /// Room contains the data to define the bounds of a scene (using a BSP Tree). It is instanced by a [VisualInstance] node to create rooms. See that class documentation for more information about rooms.
    /// </summary>
    public class Room : VisualInstance
    {
        private const string nativeName = "Room";

        public Room() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Room_Ctor(this);
        }

        internal Room(bool memoryOwn) : base(memoryOwn) {}

        ~Room()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_room");

        public void set_room(Room room)
        {
            NativeCalls.godot_icall_1_20(method_bind_0, Object.GetPtr(this), Object.GetPtr(room));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_room");

        public Room get_room()
        {
            return NativeCalls.godot_icall_0_413(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "compute_room_from_subtree");

        public void compute_room_from_subtree()
        {
            NativeCalls.godot_icall_0_7(method_bind_2, Object.GetPtr(this));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_simulate_acoustics");

        public void set_simulate_acoustics(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_3, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_simulating_acoustics");

        public bool is_simulating_acoustics()
        {
            return NativeCalls.godot_icall_0_14(method_bind_4, Object.GetPtr(this));
        }
    }
}
