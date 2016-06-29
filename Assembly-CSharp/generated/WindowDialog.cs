/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class WindowDialog : Popup {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal WindowDialog(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.WindowDialog_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected WindowDialog(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.WindowDialog_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(WindowDialog obj) {
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



  public WindowDialog() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_WindowDialog());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_title(string title) {
    GodotEnginePINVOKE.WindowDialog_set_title(swigCPtr, title);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_title() {
    string ret = GodotEnginePINVOKE.WindowDialog_get_title(swigCPtr);
    return ret;
  }

  public TextureButton get_close_button() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.WindowDialog_get_close_button(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    TextureButton ret = InternalHelpers.UnmanagedGetManaged(cPtr) as TextureButton;
    return ret;
  }

}

}
