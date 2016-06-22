/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Resource : Reference {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Resource(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Resource_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Resource(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Resource_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Resource obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~Resource() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_Resource(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void set_path(string path) {
    GodotEnginePINVOKE.Resource_set_path(swigCPtr, path);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void take_over_path(string path) {
    GodotEnginePINVOKE.Resource_take_over_path(swigCPtr, path);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_path() {
    string ret = GodotEnginePINVOKE.Resource_get_path(swigCPtr);
    return ret;
  }

  public void set_name(string name) {
    GodotEnginePINVOKE.Resource_set_name(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_name() {
    string ret = GodotEnginePINVOKE.Resource_get_name(swigCPtr);
    return ret;
  }

  public SWIGTYPE_p_RID get_rid() {
    SWIGTYPE_p_RID ret = new SWIGTYPE_p_RID(GodotEnginePINVOKE.Resource_get_rid(swigCPtr), true);
    return ret;
  }

  public void set_import_metadata(Object metadata) {
    GodotEnginePINVOKE.Resource_set_import_metadata(swigCPtr, Object.getCPtr(metadata));
  }

  public Object get_import_metadata() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Resource_get_import_metadata(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Object;
    return ret;
  }

  public Object duplicate(bool subresources) {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Resource_duplicate__SWIG_0(swigCPtr, subresources);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Object;
    return ret;
  }

  public Object duplicate() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.Resource_duplicate__SWIG_1(swigCPtr);
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Object;
    return ret;
  }

  public Resource() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Resource());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}