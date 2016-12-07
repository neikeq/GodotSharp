using System;

namespace GodotEngine
{
    public static class Performance
    {
        public const int TIME_FPS = 0;
        public const int TIME_PROCESS = 1;
        public const int TIME_FIXED_PROCESS = 2;
        public const int MEMORY_STATIC = 3;
        public const int MEMORY_DYNAMIC = 4;
        public const int MEMORY_STATIC_MAX = 5;
        public const int MEMORY_DYNAMIC_MAX = 6;
        public const int MEMORY_MESSAGE_BUFFER_MAX = 7;
        public const int OBJECT_COUNT = 8;
        public const int OBJECT_RESOURCE_COUNT = 9;
        public const int OBJECT_NODE_COUNT = 10;
        public const int RENDER_OBJECTS_IN_FRAME = 11;
        public const int RENDER_VERTICES_IN_FRAME = 12;
        public const int RENDER_MATERIAL_CHANGES_IN_FRAME = 13;
        public const int RENDER_SHADER_CHANGES_IN_FRAME = 14;
        public const int RENDER_SURFACE_CHANGES_IN_FRAME = 15;
        public const int RENDER_DRAW_CALLS_IN_FRAME = 16;
        public const int RENDER_USAGE_VIDEO_MEM_TOTAL = 20;
        public const int RENDER_VIDEO_MEM_USED = 17;
        public const int RENDER_TEXTURE_MEM_USED = 18;
        public const int RENDER_VERTEX_MEM_USED = 19;
        public const int PHYSICS_2D_ACTIVE_OBJECTS = 21;
        public const int PHYSICS_2D_COLLISION_PAIRS = 22;
        public const int PHYSICS_2D_ISLAND_COUNT = 23;
        public const int PHYSICS_3D_ACTIVE_OBJECTS = 24;
        public const int PHYSICS_3D_COLLISION_PAIRS = 25;
        public const int PHYSICS_3D_ISLAND_COUNT = 26;
        public const int MONITOR_MAX = 27;

        private const string nativeName = "Performance";
        internal static IntPtr ptr = NativeCalls.godot_icall_Performance_get_singleton();

        private static IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_monitor");

        public static float get_monitor(int monitor)
        {
            return NativeCalls.godot_icall_1_3(method_bind_0, ptr, monitor);
        }
    }
}
