/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class GrooveJoint2D : Joint2D {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal GrooveJoint2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.GrooveJoint2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected GrooveJoint2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.GrooveJoint2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(GrooveJoint2D obj) {
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



  public void set_length(float length) {
    GodotEnginePINVOKE.GrooveJoint2D_set_length(swigCPtr, length);
  }

  public float get_length() {
    float ret = GodotEnginePINVOKE.GrooveJoint2D_get_length(swigCPtr);
    return ret;
  }

  public void set_initial_offset(float offset) {
    GodotEnginePINVOKE.GrooveJoint2D_set_initial_offset(swigCPtr, offset);
  }

  public float get_initial_offset() {
    float ret = GodotEnginePINVOKE.GrooveJoint2D_get_initial_offset(swigCPtr);
    return ret;
  }

  public GrooveJoint2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_GrooveJoint2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
