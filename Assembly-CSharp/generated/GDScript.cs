/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class GDScript : Script {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal GDScript(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.GDScript_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected GDScript(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.GDScript_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(GDScript obj) {
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



  public void _new() {
    GodotEnginePINVOKE.GDScript__new(swigCPtr);
  }

  public SWIGTYPE_p_RawArray get_as_byte_code() {
    SWIGTYPE_p_RawArray ret = new SWIGTYPE_p_RawArray(GodotEnginePINVOKE.GDScript_get_as_byte_code(swigCPtr), true);
    return ret;
  }

  public GDScript() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_GDScript());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
