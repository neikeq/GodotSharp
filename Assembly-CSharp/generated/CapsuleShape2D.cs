/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class CapsuleShape2D : Shape2D {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal CapsuleShape2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.CapsuleShape2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected CapsuleShape2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.CapsuleShape2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(CapsuleShape2D obj) {
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



  public void set_radius(float radius) {
    GodotEnginePINVOKE.CapsuleShape2D_set_radius(swigCPtr, radius);
  }

  public float get_radius() {
    float ret = GodotEnginePINVOKE.CapsuleShape2D_get_radius(swigCPtr);
    return ret;
  }

  public void set_height(float height) {
    GodotEnginePINVOKE.CapsuleShape2D_set_height(swigCPtr, height);
  }

  public float get_height() {
    float ret = GodotEnginePINVOKE.CapsuleShape2D_get_height(swigCPtr);
    return ret;
  }

  public CapsuleShape2D() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_CapsuleShape2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
