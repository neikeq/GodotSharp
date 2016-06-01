/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class ShaderMaterial : Material {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal ShaderMaterial(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.ShaderMaterial_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected ShaderMaterial(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.ShaderMaterial_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(ShaderMaterial obj) {
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



  public void set_shader(SWIGTYPE_p_RefT_Shader_t shader) {
    GodotEnginePINVOKE.ShaderMaterial_set_shader(swigCPtr, SWIGTYPE_p_RefT_Shader_t.getCPtr(shader));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_RefT_Shader_t get_shader() {
    SWIGTYPE_p_RefT_Shader_t ret = new SWIGTYPE_p_RefT_Shader_t(GodotEnginePINVOKE.ShaderMaterial_get_shader(swigCPtr), true);
    return ret;
  }

  public void set_shader_param(string param, Variant value) {
    GodotEnginePINVOKE.ShaderMaterial_set_shader_param(swigCPtr, param, Variant.getCPtr(value));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public Variant get_shader_param(string param) {
    Variant ret = new Variant(GodotEnginePINVOKE.ShaderMaterial_get_shader_param(swigCPtr, param), true);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public ShaderMaterial() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_ShaderMaterial());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
