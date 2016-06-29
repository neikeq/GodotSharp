/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Mutex : Reference {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Mutex(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Mutex_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Mutex(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Mutex_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Mutex obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Mutex() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Mutex(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public Mutex() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Mutex());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void _lock() {
    GodotEnginePINVOKE.Mutex__lock(swigCPtr);
  }

  public int try_lock() {
    int ret = GodotEnginePINVOKE.Mutex_try_lock(swigCPtr);
    return ret;
  }

  public void unlock() {
    GodotEnginePINVOKE.Mutex_unlock(swigCPtr);
  }

}

}
