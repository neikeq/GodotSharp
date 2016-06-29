/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class TextureFrame : Control {
  public static readonly int STRETCH_SCALE_ON_EXPAND = 0;
  public static readonly int STRETCH_SCALE = 1;
  public static readonly int STRETCH_TILE = 2;
  public static readonly int STRETCH_KEEP = 3;
  public static readonly int STRETCH_KEEP_CENTERED = 4;
  public static readonly int STRETCH_KEEP_ASPECT = 5;
  public static readonly int STRETCH_KEEP_ASPECT_CENTERED = 6;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal TextureFrame(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.TextureFrame_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected TextureFrame(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.TextureFrame_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(TextureFrame obj) {
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



  public TextureFrame() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_TextureFrame());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_texture(Object texture) {
    GodotEnginePINVOKE.TextureFrame_set_texture(swigCPtr, Object.getCPtr(texture));
  }

  public Object get_texture() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.TextureFrame_get_texture(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Object;
    return ret;
  }

  public void set_modulate(SWIGTYPE_p_Color modulate) {
    GodotEnginePINVOKE.TextureFrame_set_modulate(swigCPtr, SWIGTYPE_p_Color.getCPtr(modulate));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Color get_modulate() {
    SWIGTYPE_p_Color ret = new SWIGTYPE_p_Color(GodotEnginePINVOKE.TextureFrame_get_modulate(swigCPtr), true);
    return ret;
  }

  public void set_expand(bool enable) {
    GodotEnginePINVOKE.TextureFrame_set_expand(swigCPtr, enable);
  }

  public bool has_expand() {
    bool ret = GodotEnginePINVOKE.TextureFrame_has_expand(swigCPtr);
    return ret;
  }

  public void set_stretch_mode(int stretch_mode) {
    GodotEnginePINVOKE.TextureFrame_set_stretch_mode(swigCPtr, stretch_mode);
  }

  public int get_stretch_mode() {
    int ret = GodotEnginePINVOKE.TextureFrame_get_stretch_mode(swigCPtr);
    return ret;
  }

}

}
