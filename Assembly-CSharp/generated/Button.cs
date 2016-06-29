/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Button : BaseButton {
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Button(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Button_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Button(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Button_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Button obj) {
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



  public Button() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Button());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_text(string text) {
    GodotEnginePINVOKE.Button_set_text(swigCPtr, text);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_text() {
    string ret = GodotEnginePINVOKE.Button_get_text(swigCPtr);
    return ret;
  }

  public void set_button_icon(Texture texture) {
    GodotEnginePINVOKE.Button_set_button_icon(swigCPtr, Texture.getCPtr(texture));
  }

  public Texture get_button_icon() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Button_get_button_icon(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Texture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Texture;
    return ret;
}

  public void set_flat(bool enabled) {
    GodotEnginePINVOKE.Button_set_flat(swigCPtr, enabled);
  }

  public void set_clip_text(bool enabled) {
    GodotEnginePINVOKE.Button_set_clip_text(swigCPtr, enabled);
  }

  public bool get_clip_text() {
    bool ret = GodotEnginePINVOKE.Button_get_clip_text(swigCPtr);
    return ret;
  }

  public void set_text_align(int align) {
    GodotEnginePINVOKE.Button_set_text_align(swigCPtr, align);
  }

  public int get_text_align() {
    int ret = GodotEnginePINVOKE.Button_get_text_align(swigCPtr);
    return ret;
  }

  public bool is_flat() {
    bool ret = GodotEnginePINVOKE.Button_is_flat(swigCPtr);
    return ret;
  }

}

}
