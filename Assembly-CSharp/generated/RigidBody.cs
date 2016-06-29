/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class RigidBody : PhysicsBody {
  public static readonly int MODE_STATIC = 1;
  public static readonly int MODE_KINEMATIC = 3;
  public static readonly int MODE_RIGID = 0;
  public static readonly int MODE_CHARACTER = 2;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal RigidBody(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.RigidBody_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected RigidBody(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.RigidBody_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(RigidBody obj) {
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



  public RigidBody() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_RigidBody());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void _integrate_forces(PhysicsDirectBodyState state) {
    GodotEnginePINVOKE.RigidBody__integrate_forces(swigCPtr, PhysicsDirectBodyState.getCPtr(state));
  }

  public void set_mode(int mode) {
    GodotEnginePINVOKE.RigidBody_set_mode(swigCPtr, mode);
  }

  public int get_mode() {
    int ret = GodotEnginePINVOKE.RigidBody_get_mode(swigCPtr);
    return ret;
  }

  public void set_mass(float mass) {
    GodotEnginePINVOKE.RigidBody_set_mass(swigCPtr, mass);
  }

  public float get_mass() {
    float ret = GodotEnginePINVOKE.RigidBody_get_mass(swigCPtr);
    return ret;
  }

  public void set_weight(float weight) {
    GodotEnginePINVOKE.RigidBody_set_weight(swigCPtr, weight);
  }

  public float get_weight() {
    float ret = GodotEnginePINVOKE.RigidBody_get_weight(swigCPtr);
    return ret;
  }

  public void set_friction(float friction) {
    GodotEnginePINVOKE.RigidBody_set_friction(swigCPtr, friction);
  }

  public float get_friction() {
    float ret = GodotEnginePINVOKE.RigidBody_get_friction(swigCPtr);
    return ret;
  }

  public void set_bounce(float bounce) {
    GodotEnginePINVOKE.RigidBody_set_bounce(swigCPtr, bounce);
  }

  public float get_bounce() {
    float ret = GodotEnginePINVOKE.RigidBody_get_bounce(swigCPtr);
    return ret;
  }

  public void set_linear_velocity(SWIGTYPE_p_Vector3 linear_velocity) {
    GodotEnginePINVOKE.RigidBody_set_linear_velocity(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(linear_velocity));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector3 get_linear_velocity() {
    SWIGTYPE_p_Vector3 ret = new SWIGTYPE_p_Vector3(GodotEnginePINVOKE.RigidBody_get_linear_velocity(swigCPtr), true);
    return ret;
  }

  public void set_angular_velocity(SWIGTYPE_p_Vector3 angular_velocity) {
    GodotEnginePINVOKE.RigidBody_set_angular_velocity(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(angular_velocity));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector3 get_angular_velocity() {
    SWIGTYPE_p_Vector3 ret = new SWIGTYPE_p_Vector3(GodotEnginePINVOKE.RigidBody_get_angular_velocity(swigCPtr), true);
    return ret;
  }

  public void set_gravity_scale(float gravity_scale) {
    GodotEnginePINVOKE.RigidBody_set_gravity_scale(swigCPtr, gravity_scale);
  }

  public float get_gravity_scale() {
    float ret = GodotEnginePINVOKE.RigidBody_get_gravity_scale(swigCPtr);
    return ret;
  }

  public void set_linear_damp(float linear_damp) {
    GodotEnginePINVOKE.RigidBody_set_linear_damp(swigCPtr, linear_damp);
  }

  public float get_linear_damp() {
    float ret = GodotEnginePINVOKE.RigidBody_get_linear_damp(swigCPtr);
    return ret;
  }

  public void set_angular_damp(float angular_damp) {
    GodotEnginePINVOKE.RigidBody_set_angular_damp(swigCPtr, angular_damp);
  }

  public float get_angular_damp() {
    float ret = GodotEnginePINVOKE.RigidBody_get_angular_damp(swigCPtr);
    return ret;
  }

  public void set_max_contacts_reported(int amount) {
    GodotEnginePINVOKE.RigidBody_set_max_contacts_reported(swigCPtr, amount);
  }

  public int get_max_contacts_reported() {
    int ret = GodotEnginePINVOKE.RigidBody_get_max_contacts_reported(swigCPtr);
    return ret;
  }

  public void set_use_custom_integrator(bool enable) {
    GodotEnginePINVOKE.RigidBody_set_use_custom_integrator(swigCPtr, enable);
  }

  public bool is_using_custom_integrator() {
    bool ret = GodotEnginePINVOKE.RigidBody_is_using_custom_integrator(swigCPtr);
    return ret;
  }

  public void set_contact_monitor(bool enabled) {
    GodotEnginePINVOKE.RigidBody_set_contact_monitor(swigCPtr, enabled);
  }

  public bool is_contact_monitor_enabled() {
    bool ret = GodotEnginePINVOKE.RigidBody_is_contact_monitor_enabled(swigCPtr);
    return ret;
  }

  public void set_use_continuous_collision_detection(bool enable) {
    GodotEnginePINVOKE.RigidBody_set_use_continuous_collision_detection(swigCPtr, enable);
  }

  public bool is_using_continuous_collision_detection() {
    bool ret = GodotEnginePINVOKE.RigidBody_is_using_continuous_collision_detection(swigCPtr);
    return ret;
  }

  public void set_axis_velocity(SWIGTYPE_p_Vector3 axis_velocity) {
    GodotEnginePINVOKE.RigidBody_set_axis_velocity(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(axis_velocity));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void apply_impulse(SWIGTYPE_p_Vector3 pos, SWIGTYPE_p_Vector3 impulse) {
    GodotEnginePINVOKE.RigidBody_apply_impulse(swigCPtr, SWIGTYPE_p_Vector3.getCPtr(pos), SWIGTYPE_p_Vector3.getCPtr(impulse));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_sleeping(bool sleeping) {
    GodotEnginePINVOKE.RigidBody_set_sleeping(swigCPtr, sleeping);
  }

  public bool is_sleeping() {
    bool ret = GodotEnginePINVOKE.RigidBody_is_sleeping(swigCPtr);
    return ret;
  }

  public void set_can_sleep(bool able_to_sleep) {
    GodotEnginePINVOKE.RigidBody_set_can_sleep(swigCPtr, able_to_sleep);
  }

  public bool is_able_to_sleep() {
    bool ret = GodotEnginePINVOKE.RigidBody_is_able_to_sleep(swigCPtr);
    return ret;
  }

  public void set_axis_lock(int axis_lock) {
    GodotEnginePINVOKE.RigidBody_set_axis_lock(swigCPtr, axis_lock);
  }

  public int get_axis_lock() {
    int ret = GodotEnginePINVOKE.RigidBody_get_axis_lock(swigCPtr);
    return ret;
  }

  public SWIGTYPE_p_Array get_colliding_bodies() {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.RigidBody_get_colliding_bodies(swigCPtr), true);
    return ret;
  }

}

}
