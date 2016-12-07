using System;
using System.Collections.Generic;

namespace GodotEngine
{
    /// <summary>
    /// Library that contains a collection of [Sample], each identified by a text ID. This is used as a data container for the majority of the SamplePlayer classes and derivatives.
    /// </summary>
    public class SampleLibrary : Resource
    {
        private const string nativeName = "SampleLibrary";

        public SampleLibrary() : this(true)
        {
            if (ptr == IntPtr.Zero)
                ptr = NativeCalls.godot_icall_SampleLibrary_Ctor(this);
        }

        internal SampleLibrary(bool memoryOwn) : base(memoryOwn) {}

        ~SampleLibrary()
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
                    NativeCalls.godot_icall_SampleLibrary_Dtor(ptr);
                        ptr = IntPtr.Zero;
                    }
                }

                GC.SuppressFinalize(this);
            }
        }

        private IntPtr method_bind_0 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "add_sample");

        /// <summary>
        /// Add a sample to the library, with a given text ID.
        /// </summary>
        public void add_sample(string name, Sample sample)
        {
            NativeCalls.godot_icall_2_65(method_bind_0, Object.GetPtr(this), name, Object.GetPtr(sample));
        }

        private IntPtr method_bind_1 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sample");

        /// <summary>
        /// Return the sample from the library matching the given text ID. Return null if the sample is not found.
        /// </summary>
        public Sample get_sample(string name)
        {
            return NativeCalls.godot_icall_1_414(method_bind_1, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_2 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "has_sample");

        /// <summary>
        /// Return true if the sample text ID exists in the library.
        /// </summary>
        public bool has_sample(string name)
        {
            return NativeCalls.godot_icall_1_49(method_bind_2, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_3 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "remove_sample");

        /// <summary>
        /// Remove the sample matching the given text ID.
        /// </summary>
        public void remove_sample(string name)
        {
            NativeCalls.godot_icall_1_18(method_bind_3, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_4 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "get_sample_list");

        public List<object> get_sample_list()
        {
            object[] ret = NativeCalls.godot_icall_0_78(method_bind_4, Object.GetPtr(this));
            return new List<object>(ret);
        }

        private IntPtr method_bind_5 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_volume_db");

        /// <summary>
        /// Set the volume (in dB) for the given sample.
        /// </summary>
        public void sample_set_volume_db(string name, float db)
        {
            NativeCalls.godot_icall_2_56(method_bind_5, Object.GetPtr(this), name, db);
        }

        private IntPtr method_bind_6 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_volume_db");

        /// <summary>
        /// Return the volume (in dB) for the given sample.
        /// </summary>
        public float sample_get_volume_db(string name)
        {
            return NativeCalls.godot_icall_1_67(method_bind_6, Object.GetPtr(this), name);
        }

        private IntPtr method_bind_7 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_set_pitch_scale");

        /// <summary>
        /// Set the pitch scale for the given sample.
        /// </summary>
        public void sample_set_pitch_scale(string name, float pitch)
        {
            NativeCalls.godot_icall_2_56(method_bind_7, Object.GetPtr(this), name, pitch);
        }

        private IntPtr method_bind_8 = NativeCalls.godot_icall_TypeDB_get_method(nativeName, "sample_get_pitch_scale");

        /// <summary>
        /// Return the pitch scale for the given sample.
        /// </summary>
        public float sample_get_pitch_scale(string name)
        {
            return NativeCalls.godot_icall_1_67(method_bind_8, Object.GetPtr(this), name);
        }
    }
}
