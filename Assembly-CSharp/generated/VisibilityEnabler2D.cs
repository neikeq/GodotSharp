/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class VisibilityEnabler2D : VisibilityNotifier2D {
  public static readonly int ENABLER_FREEZE_BODIES = 1;
  public static readonly int ENABLER_PAUSE_ANIMATIONS = 0;
  public static readonly int ENABLER_PAUSE_PARTICLES = 2;
  public static readonly int ENABLER_PAUSE_ANIMATED_SPRITES = 5;
  public static readonly int ENABLER_PARENT_PROCESS = 3;
  public static readonly int ENABLER_PARENT_FIXED_PROCESS = 4;
  public static readonly int ENABLER_MAX = 6;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal VisibilityEnabler2D(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.VisibilityEnabler2D_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected VisibilityEnabler2D(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.VisibilityEnabler2D_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(VisibilityEnabler2D obj) {
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



  public VisibilityEnabler2D() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_VisibilityEnabler2D());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

  public void set_enabler(int enabler, bool enabled) {
    GodotEnginePINVOKE.VisibilityEnabler2D_set_enabler(swigCPtr, enabler, enabled);
  }

  public bool is_enabler_enabled(int enabler) {
    bool ret = GodotEnginePINVOKE.VisibilityEnabler2D_is_enabler_enabled(swigCPtr, enabler);
    return ret;
  }

}

}
