/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class EditorScript : Reference {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal EditorScript(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.EditorScript_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected EditorScript(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.EditorScript_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(EditorScript obj) {
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



  public void _run() {
    GodotEnginePINVOKE.EditorScript__run(swigCPtr);
  }

  public void add_root_node(Object node) {
    GodotEnginePINVOKE.EditorScript_add_root_node(swigCPtr, Object.getCPtr(node));
  }

  public Object get_scene() {
    global::System.IntPtr cPtr = GodotEnginePINVOKE.EditorScript_get_scene(swigCPtr);
    Object ret = InternalHelpers.UnmanagedGetManaged(cPtr);
    if (ret == null) {
      ret = new Object(cPtr, false);
    }
    return ret;
  }

  public EditorScript() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_EditorScript());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
