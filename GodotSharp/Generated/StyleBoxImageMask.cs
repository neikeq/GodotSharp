using System;

namespace GodotEngine
{
    /// <summary>
    /// This StyleBox is similar to [StyleBoxTexture], but only meant to be used for mask testing. It takes an image and applies stretch rules to determine if the point clicked is masked or not.
    /// </summary>
    public class StyleBoxImageMask : StyleBox
    {
        private const string nativeName = "StyleBoxImageMask";

        public StyleBoxImageMask() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_StyleBoxImageMask_Ctor(this);
        }

        internal StyleBoxImageMask(bool memoryOwn) : base(memoryOwn) {}

        ~StyleBoxImageMask()
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
                    NativeCalls.godot_icall_StyleBoxImageMask_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_image");

        /// <summary>
        /// Set the image used for mask testing. Pixels (converted to grey) that have a value, less than 0.5 will fail the test.
        /// </summary>
        public void set_image(Image image)
        {
            NativeCalls.godot_icall_1_106(method_bind_0, Object.GetPtr(this), Image.GetPtr(image));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_image");

        /// <summary>
        /// Return the image used for mask testing. (see [method set_image]).
        /// </summary>
        public Image get_image()
        {
            IntPtr ret = NativeCalls.godot_icall_0_256(method_bind_1, Object.GetPtr(this));
            return new Image(ret);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_expand");

        /// <summary>
        /// Set the expand property (default). When expanding, the image will use the same rules as [StyleBoxTexture] for expand. If not expanding, the image will always be tested at its original size.
        /// </summary>
        public void set_expand(bool expand)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), expand);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_expand");

        /// <summary>
        /// Return whether the expand property is set(default). When expanding, the image will use the same rules as [StyleBoxTexture] for expand. If not expanding, the image will always be tested at its original size.
        /// </summary>
        public bool get_expand()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_expand_margin_size");

        /// <summary>
        /// Set an expand margin size (from enum MARGIN_*). Parts of the image below the size of the margin (and in the direction of the margin) will not expand.
        /// </summary>
        public void set_expand_margin_size(int margin, float size)
        {
            NativeCalls.godot_icall_2_36(method_bind_4, Object.GetPtr(this), margin, size);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_expand_margin_size");

        /// <summary>
        /// Return the expand margin size (from enum MARGIN_*). Parts of the image below the size of the margin (and in the direction of the margin) will not expand.
        /// </summary>
        public float get_expand_margin_size(int margin)
        {
            return NativeCalls.godot_icall_1_3(method_bind_5, Object.GetPtr(this), margin);
        }
    }
}
