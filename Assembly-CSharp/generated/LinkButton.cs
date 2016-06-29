/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class LinkButton : BaseButton {
  public static readonly int UNDERLINE_MODE_ALWAYS = 0;
  public static readonly int UNDERLINE_MODE_ON_HOVER = 1;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal LinkButton(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.LinkButton_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected LinkButton(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.LinkButton_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(LinkButton obj) {
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



  public LinkButton() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_LinkButton());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_text(string text) {
    GodotEnginePINVOKE.LinkButton_set_text(swigCPtr, text);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_text() {
    string ret = GodotEnginePINVOKE.LinkButton_get_text(swigCPtr);
    return ret;
  }

  public void set_underline_mode(int underline_mode) {
    GodotEnginePINVOKE.LinkButton_set_underline_mode(swigCPtr, underline_mode);
  }

  public int get_underline_mode() {
    int ret = GodotEnginePINVOKE.LinkButton_get_underline_mode(swigCPtr);
    return ret;
  }

}

}
