/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class StaticBody : PhysicsBody {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal StaticBody(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.StaticBody_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected StaticBody(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.StaticBody_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(StaticBody obj) {
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



  public void set_constant_linear_velocity(SWIGTYPE_p_Vector3 vel) {
    GodotEnginePINVOKE.StaticBody_set_constant_linear_velocity(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(vel));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_constant_angular_velocity(SWIGTYPE_p_Vector3 vel) {
    GodotEnginePINVOKE.StaticBody_set_constant_angular_velocity(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(vel));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector3 get_constant_linear_velocity() {
    SWIGTYPE_p_Vector3 ret = new SWIGTYPE_p_Vector3(GodotEnginePINVOKE.StaticBody_get_constant_linear_velocity(swigCPtr), true);
    return ret;
  }

  public SWIGTYPE_p_Vector3 get_constant_angular_velocity() {
    SWIGTYPE_p_Vector3 ret = new SWIGTYPE_p_Vector3(GodotEnginePINVOKE.StaticBody_get_constant_angular_velocity(swigCPtr), true);
    return ret;
  }

  public void set_friction(float friction) {
    GodotEnginePINVOKE.StaticBody_set_friction(swigCPtr, friction);
  }

  public float get_friction() {
    float ret = GodotEnginePINVOKE.StaticBody_get_friction(swigCPtr);
    return ret;
  }

  public void set_bounce(float bounce) {
    GodotEnginePINVOKE.StaticBody_set_bounce(swigCPtr, bounce);
  }

  public float get_bounce() {
    float ret = GodotEnginePINVOKE.StaticBody_get_bounce(swigCPtr);
    return ret;
  }

  public StaticBody() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_StaticBody());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
