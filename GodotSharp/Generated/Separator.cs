using System;

namespace GodotEngine
{
    /// <summary>
    /// Separator is a [Control] used for separating other controls. It's purely a visual decoration. Horizontal ([HSeparator]) and Vertical ([VSeparator]) versions are available.
    /// </summary>
    public class Separator : Control
    {
        private const string nativeName = "Separator";

        internal Separator() {}

        internal Separator(bool memoryOwn) : base(memoryOwn) {}

        ~Separator()
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
    }
}
