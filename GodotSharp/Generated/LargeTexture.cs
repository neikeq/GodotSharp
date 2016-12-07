using System;

namespace GodotEngine
{
    /// <summary>
    /// A Texture capable of storing many smaller Textures with offsets.
    /// You can dynamically add pieces(Textures) to this fLargeTexture] using different offsets.
    /// </summary>
    public class LargeTexture : Texture
    {
        private const string nativeName = "LargeTexture";

        public LargeTexture() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_LargeTexture_Ctor(this);
        }

        internal LargeTexture(bool memoryOwn) : base(memoryOwn) {}

        ~LargeTexture()
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
                    NativeCalls.godot_icall_LargeTexture_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_piece");

        /// <summary>
        /// Add another [Texture] to this [LargeTexture], starting on offset "ofs".
        /// </summary>
        public int add_piece(Vector2 ofs, Texture texture)
        {
            return NativeCalls.godot_icall_2_272(method_bind_0, Object.GetPtr(this), ref ofs, Object.GetPtr(texture));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_piece_offset");

        /// <summary>
        /// Set the offset of the piece with index "idx" to "ofs".
        /// </summary>
        public void set_piece_offset(int idx, Vector2 ofs)
        {
            NativeCalls.godot_icall_2_190(method_bind_1, Object.GetPtr(this), idx, ref ofs);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_piece_texture");

        /// <summary>
        /// Set the [Texture] of the piece with index "idx" to  "ofs".
        /// </summary>
        public void set_piece_texture(int idx, Texture texture)
        {
            NativeCalls.godot_icall_2_115(method_bind_2, Object.GetPtr(this), idx, Object.GetPtr(texture));
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_size");

        /// <summary>
        /// Set the size of this [LargeTexture].
        /// </summary>
        public void set_size(Vector2 size)
        {
            NativeCalls.godot_icall_1_23(method_bind_3, Object.GetPtr(this), ref size);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear");

        /// <summary>
        /// Clear the [LargeTexture].
        /// </summary>
        public void clear()
        {
            NativeCalls.godot_icall_0_7(method_bind_4, Object.GetPtr(this));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_piece_count");

        /// <summary>
        /// Return the number of pieces currently in this [LargeTexture].
        /// </summary>
        public int get_piece_count()
        {
            return NativeCalls.godot_icall_0_0(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_piece_offset");

        /// <summary>
        /// Return the offset of the piece with index "idx".
        /// </summary>
        public Vector2 get_piece_offset(int idx)
        {
            object ret = NativeCalls.godot_icall_1_191(method_bind_6, Object.GetPtr(this), idx);
            return (Vector2)ret;
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_piece_texture");

        /// <summary>
        /// Return the [Texture] of the piece with index "idx".
        /// </summary>
        public Texture get_piece_texture(int idx)
        {
            return NativeCalls.godot_icall_1_112(method_bind_7, Object.GetPtr(this), idx);
        }
    }
}
