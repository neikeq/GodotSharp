using System;

namespace GodotEngine
{
    /// <summary>
    /// These scripts can modify scenes after being imported by the 3D Scene import option of the Import menu.
    /// </summary>
    public class EditorScenePostImport : Reference
    {
        private const string nativeName = "EditorScenePostImport";

        public EditorScenePostImport() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorScenePostImport_Ctor(this);
        }

        internal EditorScenePostImport(bool memoryOwn) : base(memoryOwn) {}

        ~EditorScenePostImport()
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
                    NativeCalls.godot_icall_EditorScenePostImport_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
