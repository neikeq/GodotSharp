/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class SampleLibrary : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal SampleLibrary(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.SampleLibrary_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected SampleLibrary(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.SampleLibrary_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(SampleLibrary obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~SampleLibrary() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_SampleLibrary(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public SampleLibrary() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_SampleLibrary());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void add_sample(string name, Sample sample) {
    GodotEnginePINVOKE.SampleLibrary_add_sample(swigCPtr, name, Sample.getCPtr(sample));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Sample get_sample(string name) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.SampleLibrary_get_sample(swigCPtr, name);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Sample ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Sample;
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
}

  public bool has_sample(string name) {
    bool ret = GodotEnginePINVOKE.SampleLibrary_has_sample(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void remove_sample(string name) {
    GodotEnginePINVOKE.SampleLibrary_remove_sample(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void sample_set_volume_db(string name, float db) {
    GodotEnginePINVOKE.SampleLibrary_sample_set_volume_db(swigCPtr, name, db);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float sample_get_volume_db(string name) {
    float ret = GodotEnginePINVOKE.SampleLibrary_sample_get_volume_db(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void sample_set_pitch_scale(string name, float pitch) {
    GodotEnginePINVOKE.SampleLibrary_sample_set_pitch_scale(swigCPtr, name, pitch);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public float sample_get_pitch_scale(string name) {
    float ret = GodotEnginePINVOKE.SampleLibrary_sample_get_pitch_scale(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

}

}
