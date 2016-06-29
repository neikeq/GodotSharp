/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Semaphore : Reference {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Semaphore(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Semaphore_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Semaphore(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Semaphore_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Semaphore obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Semaphore() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Semaphore(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public Semaphore() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Semaphore());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public int wait() {
    int ret = GodotEnginePINVOKE.Semaphore_wait(swigCPtr);
    return ret;
  }

  public int post() {
    int ret = GodotEnginePINVOKE.Semaphore_post(swigCPtr);
    return ret;
  }

}

}
