/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class ParticleAttractor2D : Node2D {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal ParticleAttractor2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.ParticleAttractor2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected ParticleAttractor2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.ParticleAttractor2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(ParticleAttractor2D obj) {
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



  public ParticleAttractor2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_ParticleAttractor2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_enabled(bool enabled) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_enabled(swigCPtr, enabled);
  }

  public bool is_enabled() {
    bool ret = GodotEnginePINVOKE.ParticleAttractor2D_is_enabled(swigCPtr);
    return ret;
  }

  public void set_radius(float radius) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_radius(swigCPtr, radius);
  }

  public float get_radius() {
    float ret = GodotEnginePINVOKE.ParticleAttractor2D_get_radius(swigCPtr);
    return ret;
  }

  public void set_disable_radius(float radius) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_disable_radius(swigCPtr, radius);
  }

  public float get_disable_radius() {
    float ret = GodotEnginePINVOKE.ParticleAttractor2D_get_disable_radius(swigCPtr);
    return ret;
  }

  public void set_gravity(float gravity) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_gravity(swigCPtr, gravity);
  }

  public float get_gravity() {
    float ret = GodotEnginePINVOKE.ParticleAttractor2D_get_gravity(swigCPtr);
    return ret;
  }

  public void set_absorption(float absorption) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_absorption(swigCPtr, absorption);
  }

  public float get_absorption() {
    float ret = GodotEnginePINVOKE.ParticleAttractor2D_get_absorption(swigCPtr);
    return ret;
  }

  public void set_particles_path(NodePath path) {
    GodotEnginePINVOKE.ParticleAttractor2D_set_particles_path(swigCPtr, NodePath.getCPtr(path));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public NodePath get_particles_path() {
    NodePath ret = new NodePath(GodotEnginePINVOKE.ParticleAttractor2D_get_particles_path(swigCPtr), true);
    return ret;
  }

}

}
