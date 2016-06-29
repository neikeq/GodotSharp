/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Popup : Control {
  public static readonly int NOTIFICATION_POST_POPUP = 80;
  public static readonly int NOTIFICATION_POPUP_HIDE = 81;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Popup(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Popup_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Popup(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Popup_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Popup obj) {
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



  public Popup() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Popup());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void popup_centered(Vector2 size) {
    GodotEnginePINVOKE.Popup_popup_centered__SWIG_0(swigCPtr, ref size);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void popup_centered() {
    GodotEnginePINVOKE.Popup_popup_centered__SWIG_1(swigCPtr);
  }

  public void popup_centered_ratio(float ratio) {
    GodotEnginePINVOKE.Popup_popup_centered_ratio__SWIG_0(swigCPtr, ratio);
  }

  public void popup_centered_ratio() {
    GodotEnginePINVOKE.Popup_popup_centered_ratio__SWIG_1(swigCPtr);
  }

  public void popup_centered_minsize(Vector2 minsize) {
    GodotEnginePINVOKE.Popup_popup_centered_minsize__SWIG_0(swigCPtr, ref minsize);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void popup_centered_minsize() {
    GodotEnginePINVOKE.Popup_popup_centered_minsize__SWIG_1(swigCPtr);
  }

  public void popup() {
    GodotEnginePINVOKE.Popup_popup(swigCPtr);
  }

  public void set_exclusive(bool enable) {
    GodotEnginePINVOKE.Popup_set_exclusive(swigCPtr, enable);
  }

  public bool is_exclusive() {
    bool ret = GodotEnginePINVOKE.Popup_is_exclusive(swigCPtr);
    return ret;
  }

}

}
