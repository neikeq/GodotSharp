using System;
using System.Collections.Generic;

namespace GodotEngine
{
    public class BakedLight : Resource
    {
        public const int MODE_OCTREE = 0;
        public const int MODE_LIGHTMAPS = 1;
        public const int BAKE_DIFFUSE = 0;
        public const int BAKE_SPECULAR = 1;
        public const int BAKE_TRANSLUCENT = 2;
        public const int BAKE_CONSERVE_ENERGY = 3;
        public const int BAKE_MAX = 5;

        private const string nativeName = "BakedLight";

        public BakedLight() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_BakedLight_Ctor(this);
        }

        internal BakedLight(bool memoryOwn) : base(memoryOwn) {}

        ~BakedLight()
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
                    NativeCalls.godot_icall_BakedLight_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_mode");

        public void set_mode(int mode)
        {
            NativeCalls.godot_icall_1_4(method_bind_0, Object.GetPtr(this), mode);
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_mode");

        public int get_mode()
        {
            return NativeCalls.godot_icall_0_0(method_bind_1, Object.GetPtr(this));
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_octree");

        public void set_octree(List<byte> octree)
        {
            NativeCalls.godot_icall_1_101(method_bind_2, Object.GetPtr(this), octree.ToArray());
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_octree");

        public List<byte> get_octree()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_3, Object.GetPtr(this));
            return new List<byte>(ret);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_light");

        public void set_light(List<byte> light)
        {
            NativeCalls.godot_icall_1_101(method_bind_4, Object.GetPtr(this), light.ToArray());
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_light");

        public List<byte> get_light()
        {
            byte[] ret = NativeCalls.godot_icall_0_102(method_bind_5, Object.GetPtr(this));
            return new List<byte>(ret);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_sampler_octree");

        public void set_sampler_octree(List<int> sampler_octree)
        {
            NativeCalls.godot_icall_1_103(method_bind_6, Object.GetPtr(this), sampler_octree.ToArray());
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sampler_octree");

        public List<int> get_sampler_octree()
        {
            int[] ret = NativeCalls.godot_icall_0_104(method_bind_7, Object.GetPtr(this));
            return new List<int>(ret);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_lightmap");

        public void add_lightmap(Texture texture, Vector2 gen_size)
        {
            NativeCalls.godot_icall_2_105(method_bind_8, Object.GetPtr(this), Object.GetPtr(texture), ref gen_size);
        }

        private IntPtr method_bind_9 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "erase_lightmap");

        public void erase_lightmap(int id)
        {
            NativeCalls.godot_icall_1_4(method_bind_9, Object.GetPtr(this), id);
        }

        private IntPtr method_bind_10 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "clear_lightmaps");

        public void clear_lightmaps()
        {
            NativeCalls.godot_icall_0_7(method_bind_10, Object.GetPtr(this));
        }

        private IntPtr method_bind_11 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cell_subdivision");

        public void set_cell_subdivision(int cell_subdivision)
        {
            NativeCalls.godot_icall_1_4(method_bind_11, Object.GetPtr(this), cell_subdivision);
        }

        private IntPtr method_bind_12 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cell_subdivision");

        public int get_cell_subdivision()
        {
            return NativeCalls.godot_icall_0_0(method_bind_12, Object.GetPtr(this));
        }

        private IntPtr method_bind_13 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_initial_lattice_subdiv");

        public void set_initial_lattice_subdiv(int cell_subdivision)
        {
            NativeCalls.godot_icall_1_4(method_bind_13, Object.GetPtr(this), cell_subdivision);
        }

        private IntPtr method_bind_14 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_initial_lattice_subdiv");

        public int get_initial_lattice_subdiv()
        {
            return NativeCalls.godot_icall_0_0(method_bind_14, Object.GetPtr(this));
        }

        private IntPtr method_bind_15 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_plot_size");

        public void set_plot_size(float plot_size)
        {
            NativeCalls.godot_icall_1_45(method_bind_15, Object.GetPtr(this), plot_size);
        }

        private IntPtr method_bind_16 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_plot_size");

        public float get_plot_size()
        {
            return NativeCalls.godot_icall_0_46(method_bind_16, Object.GetPtr(this));
        }

        private IntPtr method_bind_17 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bounces");

        public void set_bounces(int bounces)
        {
            NativeCalls.godot_icall_1_4(method_bind_17, Object.GetPtr(this), bounces);
        }

        private IntPtr method_bind_18 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bounces");

        public int get_bounces()
        {
            return NativeCalls.godot_icall_0_0(method_bind_18, Object.GetPtr(this));
        }

        private IntPtr method_bind_19 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_cell_extra_margin");

        public void set_cell_extra_margin(float cell_extra_margin)
        {
            NativeCalls.godot_icall_1_45(method_bind_19, Object.GetPtr(this), cell_extra_margin);
        }

        private IntPtr method_bind_20 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_cell_extra_margin");

        public float get_cell_extra_margin()
        {
            return NativeCalls.godot_icall_0_46(method_bind_20, Object.GetPtr(this));
        }

        private IntPtr method_bind_21 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_edge_damp");

        public void set_edge_damp(float edge_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_21, Object.GetPtr(this), edge_damp);
        }

        private IntPtr method_bind_22 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_edge_damp");

        public float get_edge_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_22, Object.GetPtr(this));
        }

        private IntPtr method_bind_23 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_normal_damp");

        public void set_normal_damp(float normal_damp)
        {
            NativeCalls.godot_icall_1_45(method_bind_23, Object.GetPtr(this), normal_damp);
        }

        private IntPtr method_bind_24 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_normal_damp");

        public float get_normal_damp()
        {
            return NativeCalls.godot_icall_0_46(method_bind_24, Object.GetPtr(this));
        }

        private IntPtr method_bind_25 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_tint");

        public void set_tint(float tint)
        {
            NativeCalls.godot_icall_1_45(method_bind_25, Object.GetPtr(this), tint);
        }

        private IntPtr method_bind_26 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_tint");

        public float get_tint()
        {
            return NativeCalls.godot_icall_0_46(method_bind_26, Object.GetPtr(this));
        }

        private IntPtr method_bind_27 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_saturation");

        public void set_saturation(float saturation)
        {
            NativeCalls.godot_icall_1_45(method_bind_27, Object.GetPtr(this), saturation);
        }

        private IntPtr method_bind_28 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_saturation");

        public float get_saturation()
        {
            return NativeCalls.godot_icall_0_46(method_bind_28, Object.GetPtr(this));
        }

        private IntPtr method_bind_29 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ao_radius");

        public void set_ao_radius(float ao_radius)
        {
            NativeCalls.godot_icall_1_45(method_bind_29, Object.GetPtr(this), ao_radius);
        }

        private IntPtr method_bind_30 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ao_radius");

        public float get_ao_radius()
        {
            return NativeCalls.godot_icall_0_46(method_bind_30, Object.GetPtr(this));
        }

        private IntPtr method_bind_31 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_ao_strength");

        public void set_ao_strength(float ao_strength)
        {
            NativeCalls.godot_icall_1_45(method_bind_31, Object.GetPtr(this), ao_strength);
        }

        private IntPtr method_bind_32 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_ao_strength");

        public float get_ao_strength()
        {
            return NativeCalls.godot_icall_0_46(method_bind_32, Object.GetPtr(this));
        }

        private IntPtr method_bind_33 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_realtime_color_enabled");

        public void set_realtime_color_enabled(bool enabled)
        {
            NativeCalls.godot_icall_1_13(method_bind_33, Object.GetPtr(this), enabled);
        }

        private IntPtr method_bind_34 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_realtime_color_enabled");

        public bool get_realtime_color_enabled()
        {
            return NativeCalls.godot_icall_0_14(method_bind_34, Object.GetPtr(this));
        }

        private IntPtr method_bind_35 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_realtime_color");

        public void set_realtime_color(Color tint)
        {
            NativeCalls.godot_icall_1_25(method_bind_35, Object.GetPtr(this), ref tint);
        }

        private IntPtr method_bind_36 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_realtime_color");

        public Color get_realtime_color()
        {
            object ret = NativeCalls.godot_icall_0_26(method_bind_36, Object.GetPtr(this));
            return (Color)ret;
        }

        private IntPtr method_bind_37 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_realtime_energy");

        public void set_realtime_energy(float energy)
        {
            NativeCalls.godot_icall_1_45(method_bind_37, Object.GetPtr(this), energy);
        }

        private IntPtr method_bind_38 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_realtime_energy");

        public float get_realtime_energy()
        {
            return NativeCalls.godot_icall_0_46(method_bind_38, Object.GetPtr(this));
        }

        private IntPtr method_bind_39 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_format");

        public void set_format(int format)
        {
            NativeCalls.godot_icall_1_4(method_bind_39, Object.GetPtr(this), format);
        }

        private IntPtr method_bind_40 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_format");

        public int get_format()
        {
            return NativeCalls.godot_icall_0_0(method_bind_40, Object.GetPtr(this));
        }

        private IntPtr method_bind_41 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_transfer_lightmaps_only_to_uv2");

        public void set_transfer_lightmaps_only_to_uv2(bool enable)
        {
            NativeCalls.godot_icall_1_13(method_bind_41, Object.GetPtr(this), enable);
        }

        private IntPtr method_bind_42 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_transfer_lightmaps_only_to_uv2");

        public bool get_transfer_lightmaps_only_to_uv2()
        {
            return NativeCalls.godot_icall_0_14(method_bind_42, Object.GetPtr(this));
        }

        private IntPtr method_bind_43 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_energy_multiplier");

        public void set_energy_multiplier(float energy_multiplier)
        {
            NativeCalls.godot_icall_1_45(method_bind_43, Object.GetPtr(this), energy_multiplier);
        }

        private IntPtr method_bind_44 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_energy_multiplier");

        public float get_energy_multiplier()
        {
            return NativeCalls.godot_icall_0_46(method_bind_44, Object.GetPtr(this));
        }

        private IntPtr method_bind_45 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_gamma_adjust");

        public void set_gamma_adjust(float gamma_adjust)
        {
            NativeCalls.godot_icall_1_45(method_bind_45, Object.GetPtr(this), gamma_adjust);
        }

        private IntPtr method_bind_46 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_gamma_adjust");

        public float get_gamma_adjust()
        {
            return NativeCalls.godot_icall_0_46(method_bind_46, Object.GetPtr(this));
        }

        private IntPtr method_bind_47 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "set_bake_flag");

        public void set_bake_flag(int flag, bool enabled)
        {
            NativeCalls.godot_icall_2_32(method_bind_47, Object.GetPtr(this), flag, enabled);
        }

        private IntPtr method_bind_48 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_bake_flag");

        public bool get_bake_flag(int flag)
        {
            return NativeCalls.godot_icall_1_33(method_bind_48, Object.GetPtr(this), flag);
        }
    }
}
