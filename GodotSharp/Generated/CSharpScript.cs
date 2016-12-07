using System;

namespace GodotEngine
{
    public class CSharpScript : Script
    {
        private const string nativeName = "CSharpScript";

        public CSharpScript() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_CSharpScript_Ctor(this);
        }

        internal CSharpScript(bool memoryOwn) : base(memoryOwn) {}

        ~CSharpScript()
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
                    NativeCalls.godot_icall_CSharpScript_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }
    }
}
