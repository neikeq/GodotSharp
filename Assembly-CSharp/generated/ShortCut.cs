/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class ShortCut : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal ShortCut(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.ShortCut_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected ShortCut(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.ShortCut_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(ShortCut obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~ShortCut() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_ShortCut(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public ShortCut() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_ShortCut());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_shortcut(SWIGTYPE_p_InputEvent arg0) {
    GodotEnginePINVOKE.ShortCut_set_shortcut(swigCPtr, SWIGTYPE_p_InputEvent.getCPtr(arg0));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_InputEvent get_shortcut() {
    SWIGTYPE_p_InputEvent ret = new SWIGTYPE_p_InputEvent(GodotEnginePINVOKE.ShortCut_get_shortcut(swigCPtr), true);
    return ret;
  }

  public bool is_valid() {
    bool ret = GodotEnginePINVOKE.ShortCut_is_valid(swigCPtr);
    return ret;
  }

  public bool is_shortcut(SWIGTYPE_p_InputEvent arg0) {
    bool ret = GodotEnginePINVOKE.ShortCut_is_shortcut(swigCPtr, SWIGTYPE_p_InputEvent.getCPtr(arg0));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public string get_as_text() {
    string ret = GodotEnginePINVOKE.ShortCut_get_as_text(swigCPtr);
    return ret;
  }

}

}
