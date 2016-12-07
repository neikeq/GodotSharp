using System;

namespace GodotEngine
{
    /// <summary>
    /// The RID type is used to access the unique integer ID of a resource.  They are opaque, so they do not grant access to the associated resource by themselves. They are used by and with the low-level Server classes such as [VisualServer].
    /// </summary>
    public class RID
    {
        private const string nativeName = "RID";

        internal IntPtr ptr;

        internal static IntPtr GetPtr(RID instance)
        {
            return instance == null ? IntPtr.Zero : instance.ptr;
        }

        ~RID()
        {
            Dispose();
        }

        public virtual void Dispose()
        {
            lock (this)
            {
                if (ptr != IntPtr.Zero)
                {
                    NativeCalls.godot_icall_RID_Dtor(ptr);
                    ptr = IntPtr.Zero;
                }

                GC.SuppressFinalize(this);
            }
        }

        internal RID(IntPtr ptr)
        {
            this.ptr = ptr;
        }

        public bool HasValidHandle()
        {
            return ptr == IntPtr.Zero;
        }

        internal RID()
        {
            this.ptr = IntPtr.Zero;
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_id");

        /// <summary>
        /// Retrieve the ID of the referenced resource.
        /// </summary>
        public int get_id()
        {
            return NativeCalls.godot_icall_0_0(method_bind_0, RID.GetPtr(this));
        }
    }
}
