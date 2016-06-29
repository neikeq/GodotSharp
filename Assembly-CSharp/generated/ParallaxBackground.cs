/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class ParallaxBackground : CanvasLayer {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal ParallaxBackground(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.ParallaxBackground_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected ParallaxBackground(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.ParallaxBackground_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(ParallaxBackground obj) {
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



  public ParallaxBackground() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_ParallaxBackground());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_scroll_offset(Vector2 ofs) {
    GodotEnginePINVOKE.ParallaxBackground_set_scroll_offset(swigCPtr, ref ofs);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_scroll_offset() {
    Vector2 ret = GodotEnginePINVOKE.ParallaxBackground_get_scroll_offset(swigCPtr);
    return ret;
}

  public void set_scroll_base_offset(Vector2 ofs) {
    GodotEnginePINVOKE.ParallaxBackground_set_scroll_base_offset(swigCPtr, ref ofs);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_scroll_base_offset() {
    Vector2 ret = GodotEnginePINVOKE.ParallaxBackground_get_scroll_base_offset(swigCPtr);
    return ret;
}

  public void set_scroll_base_scale(Vector2 scale) {
    GodotEnginePINVOKE.ParallaxBackground_set_scroll_base_scale(swigCPtr, ref scale);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_scroll_base_scale() {
    Vector2 ret = GodotEnginePINVOKE.ParallaxBackground_get_scroll_base_scale(swigCPtr);
    return ret;
}

  public void set_limit_begin(Vector2 ofs) {
    GodotEnginePINVOKE.ParallaxBackground_set_limit_begin(swigCPtr, ref ofs);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_limit_begin() {
    Vector2 ret = GodotEnginePINVOKE.ParallaxBackground_get_limit_begin(swigCPtr);
    return ret;
}

  public void set_limit_end(Vector2 ofs) {
    GodotEnginePINVOKE.ParallaxBackground_set_limit_end(swigCPtr, ref ofs);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Vector2 get_limit_end() {
    Vector2 ret = GodotEnginePINVOKE.ParallaxBackground_get_limit_end(swigCPtr);
    return ret;
}

  public void set_ignore_camera_zoom(bool ignore) {
    GodotEnginePINVOKE.ParallaxBackground_set_ignore_camera_zoom(swigCPtr, ignore);
  }

  public bool is_ignore_camera_zoom() {
    bool ret = GodotEnginePINVOKE.ParallaxBackground_is_ignore_camera_zoom(swigCPtr);
    return ret;
  }

}

}
