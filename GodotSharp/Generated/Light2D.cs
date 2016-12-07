using System;

namespace GodotEngine
{
    /// <summary>
    /// Node that casts light in a 2D environment. Light is defined by a (usually grayscale) texture, a color, an energy value, a mode (see constants), and various other parameters (range and shadows-related). Note that Light2D can be used as a mask.
    /// </summary>
    public class Light2D : Node2D
    {
        /// <summary>
        /// Adds the value of pixels corresponding to the Light2D to the values of pixels under it. This is the common behaviour of a light.
        /// </summary>
        public const int MODE_ADD = 0;
        /// <summary>
        /// Substract the value of pixels corresponding to the Light2D to the values of pixels under it, resulting in inversed light effect.
        /// </summary>
        public const int MODE_SUB = 1;
        /// <summary>
        /// Mix the value of pixels corresponding to the Light2D to the values of pixels under it by linear interpolation.
        /// </summary>
        public const int MODE_MIX = 2;
        /// <summary>
        /// The light texture of the Light2D is used as a mask, hiding or revealing parts of the screen underneath depending on the value of each pixel of the light (mask) texture.
        /// </summary>
        public const int MODE_MASK = 3;

        private const string nativeName = "Light2D";

        public Light2D() : this(false)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_Light2D_Ctor(this);
        }

        internal Light2D(bool memoryOwn) : base(memoryOwn) {}

        ~Light2D()
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

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_enabled");

        /// <summary>
        /// Switches the Light2D on or off, depending on the 'enabled' parameter.
        /// </summary>
        public void set_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_0, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_enabled");

        /// <summary>
        /// Return true if the Light2D is enabled, false if it is not.
        /// </summary>
        public bool is_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_editor_only");

        public void set_editor_only(bool editor_only)
        {
            NativeCalls.godot_icall_1_13(method_bind_2, Object.GetPtr(this), editor_only);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_editor_only");

        public bool is_editor_only()
        {
            return NativeCalls.godot_icall_0_14(method_bind_3, Object.GetPtr(this));
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture");

        /// <summary>
        /// Set the texture of the Light2D.
        /// </summary>
        public void set_texture(Object texture)
        {
            NativeCalls.godot_icall_1_20(method_bind_4, Object.GetPtr(this), Object.GetPtr(texture));
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture");

        /// <summary>
        /// Return the texture of the Light2D.
        /// </summary>
        public Object get_texture()
        {
            return NativeCalls.godot_icall_0_12(method_bind_5, Object.GetPtr(this));
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_offset");

        /// <summary>
        /// Set the offset of the light texture.
        /// </summary>
        public void set_texture_offset(Vector2 texture_offset)
        {
            NativeCalls.godot_icall_1_23(method_bind_6, Object.GetPtr(this), ref texture_offset);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_offset");

        /// <summary>
        /// Return the offset of the light texture.
        /// </summary>
        public Vector2 get_texture_offset()
        {
            object ret = NativeCalls.godot_icall_0_24(method_bind_7, Object.GetPtr(this));
            return (Vector2)ret;
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_color");

        /// <summary>
        /// Set the color of the Light2D.
        /// </summary>
        public void set_color(Color color)
        {
            NativeCalls.godot_icall_1_25(method_bind_8, Object.GetPtr(this), ref color);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_color");

        /// <summary>
        /// Return the color of the Light2D.
        /// </summary>
        public Color get_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_9, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_height");

        /// <summary>
        /// Set the height of the Light2D. Used with 2D normalmapping.
        /// </summary>
        public void set_height(float height)
        {
            NativeCalls.godot_icall_1_45(method_bind_10, Object.GetPtr(this), height);
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_height");

        /// <summary>
        /// Return the height of the Light2D. Used with 2D normalmapping.
        /// </summary>
        public float get_height()
        {
            return NativeCalls.godot_icall_0_46(method_bind_11, Object.GetPtr(this));
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_energy");

        /// <summary>
        /// Set the energy value of the Light2D. The bigger the value, the stronger the light.
        /// </summary>
        public void set_energy(float energy)
        {
            NativeCalls.godot_icall_1_45(method_bind_12, Object.GetPtr(this), energy);
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_energy");

        /// <summary>
        /// Return the energy value of the Light2D.
        /// </summary>
        public float get_energy()
        {
            return NativeCalls.godot_icall_0_46(method_bind_13, Object.GetPtr(this));
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_texture_scale");

        /// <summary>
        /// Set the scale value of the light texture.
        /// </summary>
        public void set_texture_scale(float texture_scale)
        {
            NativeCalls.godot_icall_1_45(method_bind_14, Object.GetPtr(this), texture_scale);
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_texture_scale");

        /// <summary>
        /// Return the scale value of the light texture.
        /// </summary>
        public float get_texture_scale()
        {
            return NativeCalls.godot_icall_0_46(method_bind_15, Object.GetPtr(this));
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_z_range_min");

        /// <summary>
        /// Set the minimum Z value that objects of the scene have to be in order to be affected by the Light2D.
        /// </summary>
        public void set_z_range_min(int z)
        {
            NativeCalls.godot_icall_1_4(method_bind_16, Object.GetPtr(this), z);
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_z_range_min");

        /// <summary>
        /// Get the minimum Z value that objects of the scene have to be in order to be affected by the Light2D.
        /// </summary>
        public int get_z_range_min()
        {
            return NativeCalls.godot_icall_0_0(method_bind_17, Object.GetPtr(this));
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_z_range_max");

        /// <summary>
        /// Set the maximum Z value that objects of the scene can be in order to be affected by the Light2D.
        /// </summary>
        public void set_z_range_max(int z)
        {
            NativeCalls.godot_icall_1_4(method_bind_18, Object.GetPtr(this), z);
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_z_range_max");

        /// <summary>
        /// Get the maximum Z value that objects of the scene can be in order to be affected by the Light2D.
        /// </summary>
        public int get_z_range_max()
        {
            return NativeCalls.godot_icall_0_0(method_bind_19, Object.GetPtr(this));
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_range_min");

        /// <summary>
        /// Set the minimum layer value of objects of the scene that are affected by the Light2D.
        /// </summary>
        public void set_layer_range_min(int layer)
        {
            NativeCalls.godot_icall_1_4(method_bind_20, Object.GetPtr(this), layer);
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_range_min");

        /// <summary>
        /// Get the minimum layer value of objects of the scene that are affected by the Light2D.
        /// </summary>
        public int get_layer_range_min()
        {
            return NativeCalls.godot_icall_0_0(method_bind_21, Object.GetPtr(this));
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_layer_range_max");

        /// <summary>
        /// Set the maximum layer value of objects of the scene that are affected by the Light2D.
        /// </summary>
        public void set_layer_range_max(int layer)
        {
            NativeCalls.godot_icall_1_4(method_bind_22, Object.GetPtr(this), layer);
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_layer_range_max");

        /// <summary>
        /// Set the maximum layer value of objects of the scene that are affected by the Light2D.
        /// </summary>
        public int get_layer_range_max()
        {
            return NativeCalls.godot_icall_0_0(method_bind_23, Object.GetPtr(this));
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_mask");

        /// <summary>
        /// Set the item mask of the Light2D to 'item_mask' value.
        /// </summary>
        public void set_item_mask(int item_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_24, Object.GetPtr(this), item_mask);
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_mask");

        /// <summary>
        /// Return the item mask of the Light2D.
        /// </summary>
        public int get_item_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_25, Object.GetPtr(this));
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_item_shadow_mask");

        /// <summary>
        /// Set the item shadow mask to 'item_shadow_mask' value.
        /// </summary>
        public void set_item_shadow_mask(int item_shadow_mask)
        {
            NativeCalls.godot_icall_1_4(method_bind_26, Object.GetPtr(this), item_shadow_mask);
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_item_shadow_mask");

        /// <summary>
        /// Return the item shadow mask of the Light2D.
        /// </summary>
        public int get_item_shadow_mask()
        {
            return NativeCalls.godot_icall_0_0(method_bind_27, Object.GetPtr(this));
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        /// <summary>
        /// Set the behaviour mode of the Light2D. Use constants defined in the constants section.
        /// </summary>
        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_28, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        /// <summary>
        /// Return the current mode set to the Light2D.
        /// </summary>
        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_29, Object.GetPtr(this));
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_enabled");

        /// <summary>
        /// Enable or disable shadows casting from this Light2D according to the 'enabled' parameter.
        /// </summary>
        public void set_shadow_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_30, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "is_shadow_enabled");

        /// <summary>
        /// Return true if shadow casting is enabled for this Light2D, else return false.
        /// </summary>
        public bool is_shadow_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_31, Object.GetPtr(this));
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_buffer_size");

        /// <summary>
        /// Set the shadow buffer size.
        /// </summary>
        public void set_shadow_buffer_size(int size)
        {
            NativeCalls.godot_icall_1_4(method_bind_32, Object.GetPtr(this), size);
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shadow_buffer_size");

        /// <summary>
        /// Return the shadow buffer size.
        /// </summary>
        public int get_shadow_buffer_size()
        {
            return NativeCalls.godot_icall_0_0(method_bind_33, Object.GetPtr(this));
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_esm_multiplier");

        /// <summary>
        /// Set the Exponential Shadow Multiplier (ESM) value of the Light2D.
        /// </summary>
        public void set_shadow_esm_multiplier(float multiplier)
        {
            NativeCalls.godot_icall_1_45(method_bind_34, Object.GetPtr(this), multiplier);
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shadow_esm_multiplier");

        /// <summary>
        /// Return the Exponential Shadow Multiplier (ESM) value of the Light2D.
        /// </summary>
        public float get_shadow_esm_multiplier()
        {
            return NativeCalls.godot_icall_0_46(method_bind_35, Object.GetPtr(this));
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_shadow_color");

        /// <summary>
        /// Set the color of casted shadows for this Light2D.
        /// </summary>
        public void set_shadow_color(Color shadow_color)
        {
            NativeCalls.godot_icall_1_25(method_bind_36, Object.GetPtr(this), ref shadow_color);
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_shadow_color");

        /// <summary>
        /// Return the color of casted shadows for this Light2D.
        /// </summary>
        public Color get_shadow_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_37, Object.GetPtr(this));
            return (Color)ret;
        }
    }
}
