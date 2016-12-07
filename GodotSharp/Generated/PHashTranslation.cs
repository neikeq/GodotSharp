using System;

namespace GodotEngine
{
    /// <summary>
    /// Optimized translation. Uses real-time compressed translations, which results in very small dictionaries.
    /// </summary>
    public class PHashTranslation : Translation
    {
        private const string nativeName = "PHashTranslation";

        public PHashTranslation() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_PHashTranslation_Ctor(this);
        }

        internal PHashTranslation(bool memoryOwn) : base(memoryOwn) {}

        ~PHashTranslation()
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
                    NativeCalls.godot_icall_PHashTranslation_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "generate");

        public void generate(Translation @from)
        {
            NativeCalls.godot_icall_1_21(method_bind_0, Object.GetPtr(this), Object.GetPtr(@from));
        }
    }
}
