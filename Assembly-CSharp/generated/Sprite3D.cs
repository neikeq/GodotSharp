/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Sprite3D : SpriteBase3D {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Sprite3D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Sprite3D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Sprite3D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Sprite3D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Sprite3D obj) {
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



  public void set_texture(Texture texture) {
    GodotEnginePINVOKE.Sprite3D_set_texture(swigCPtr, Texture.getCPtr(texture));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Texture get_texture() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Sprite3D_get_texture(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Texture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Texture;
    return ret;
}

  public void set_region(bool enabled) {
    GodotEnginePINVOKE.Sprite3D_set_region(swigCPtr, enabled);
  }

  public bool is_region() {
    bool ret = GodotEnginePINVOKE.Sprite3D_is_region(swigCPtr);
    return ret;
  }

  public void set_region_rect(SWIGTYPE_p_Rect2 rect) {
    GodotEnginePINVOKE.Sprite3D_set_region_rect(swigCPtr, SWIGTYPE_p_Rect2.getCPtr(rect));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Rect2 get_region_rect() {
    SWIGTYPE_p_Rect2 ret = new SWIGTYPE_p_Rect2(GodotEnginePINVOKE.Sprite3D_get_region_rect(swigCPtr), true);
    return ret;
  }

  public void set_frame(int frame) {
    GodotEnginePINVOKE.Sprite3D_set_frame(swigCPtr, frame);
  }

  public int get_frame() {
    int ret = GodotEnginePINVOKE.Sprite3D_get_frame(swigCPtr);
    return ret;
  }

  public void set_vframes(int vframes) {
    GodotEnginePINVOKE.Sprite3D_set_vframes(swigCPtr, vframes);
  }

  public int get_vframes() {
    int ret = GodotEnginePINVOKE.Sprite3D_get_vframes(swigCPtr);
    return ret;
  }

  public void set_hframes(int hframes) {
    GodotEnginePINVOKE.Sprite3D_set_hframes(swigCPtr, hframes);
  }

  public int get_hframes() {
    int ret = GodotEnginePINVOKE.Sprite3D_get_hframes(swigCPtr);
    return ret;
  }

  public Sprite3D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Sprite3D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}