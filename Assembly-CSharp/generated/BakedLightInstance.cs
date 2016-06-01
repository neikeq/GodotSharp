/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class BakedLightInstance : VisualInstance {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal BakedLightInstance(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.BakedLightInstance_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected BakedLightInstance(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.BakedLightInstance_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(BakedLightInstance obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          throw new global::System.MethodAccessException("C++ destructor does not have public access");
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void set_baked_light(Object baked_light) {
    GodotEnginePINVOKE.BakedLightInstance_set_baked_light(swigCPtr, Object.getCPtr(baked_light));
  }

  public Object get_baked_light() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.BakedLightInstance_get_baked_light(swigCPtr);
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr);
    if (ret == null) {
      ret = new Object(cPtr, false);
    }
    return ret;
  }

  public SWIGTYPE_p_RID get_baked_light_instance() {
    SWIGTYPE_p_RID ret = new SWIGTYPE_p_RID(GodotEnginePINVOKE.BakedLightInstance_get_baked_light_instance(swigCPtr), true);
    return ret;
  }

  public BakedLightInstance() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_BakedLightInstance());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
