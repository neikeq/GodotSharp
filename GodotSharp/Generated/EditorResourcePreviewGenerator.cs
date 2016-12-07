using System;

namespace GodotEngine
{
    /// <summary>
    /// Custom code to generate previews. Please check "file_dialog/thumbnail_size" in EditorSettings to find out the right size to do previews at.
    /// </summary>
    public class EditorResourcePreviewGenerator : Reference
    {
        private const string nativeName = "EditorResourcePreviewGenerator";

        public EditorResourcePreviewGenerator() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_EditorResourcePreviewGenerator_Ctor(this);
        }

        internal EditorResourcePreviewGenerator(bool memoryOwn) : base(memoryOwn) {}

        ~EditorResourcePreviewGenerator()
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
                    NativeCalls.godot_icall_EditorResourcePreviewGenerator_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
