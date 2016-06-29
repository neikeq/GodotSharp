/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class VehicleBody : PhysicsBody {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal VehicleBody(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.VehicleBody_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected VehicleBody(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.VehicleBody_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(VehicleBody obj) {
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



  public VehicleBody() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_VehicleBody());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_mass(float mass) {
    GodotEnginePINVOKE.VehicleBody_set_mass(swigCPtr, mass);
  }

  public float get_mass() {
    float ret = GodotEnginePINVOKE.VehicleBody_get_mass(swigCPtr);
    return ret;
  }

  public void set_friction(float friction) {
    GodotEnginePINVOKE.VehicleBody_set_friction(swigCPtr, friction);
  }

  public float get_friction() {
    float ret = GodotEnginePINVOKE.VehicleBody_get_friction(swigCPtr);
    return ret;
  }

  public void set_engine_force(float engine_force) {
    GodotEnginePINVOKE.VehicleBody_set_engine_force(swigCPtr, engine_force);
  }

  public float get_engine_force() {
    float ret = GodotEnginePINVOKE.VehicleBody_get_engine_force(swigCPtr);
    return ret;
  }

  public void set_brake(float brake) {
    GodotEnginePINVOKE.VehicleBody_set_brake(swigCPtr, brake);
  }

  public float get_brake() {
    float ret = GodotEnginePINVOKE.VehicleBody_get_brake(swigCPtr);
    return ret;
  }

  public void set_steering(float steering) {
    GodotEnginePINVOKE.VehicleBody_set_steering(swigCPtr, steering);
  }

  public float get_steering() {
    float ret = GodotEnginePINVOKE.VehicleBody_get_steering(swigCPtr);
    return ret;
  }

  public SWIGTYPE_p_Vector3 get_linear_velocity() {
    SWIGTYPE_p_Vector3 ret = new SWIGTYPE_p_Vector3(GodotEnginePINVOKE.VehicleBody_get_linear_velocity(swigCPtr), true);
    return ret;
  }

}

}
