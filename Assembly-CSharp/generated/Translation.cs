/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Translation : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Translation(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Translation_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Translation(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Translation_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Translation obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Translation() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Translation(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void set_locale(string locale) {
    GodotEnginePINVOKE.Translation_set_locale(swigCPtr, locale);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_locale() {
    string ret = GodotEnginePINVOKE.Translation_get_locale(swigCPtr);
    return ret;
  }

  public void add_message(string src_message, string xlated_message) {
    GodotEnginePINVOKE.Translation_add_message(swigCPtr, src_message, xlated_message);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_message(string src_message) {
    string ret = GodotEnginePINVOKE.Translation_get_message(swigCPtr, src_message);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public void erase_message(string src_message) {
    GodotEnginePINVOKE.Translation_erase_message(swigCPtr, src_message);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_StringArray get_message_list() {
    SWIGTYPE_p_StringArray ret = new SWIGTYPE_p_StringArray(GodotEnginePINVOKE.Translation_get_message_list(swigCPtr), true);
    return ret;
  }

  public int get_message_count() {
    int ret = GodotEnginePINVOKE.Translation_get_message_count(swigCPtr);
    return ret;
  }

  public Translation() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Translation());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}