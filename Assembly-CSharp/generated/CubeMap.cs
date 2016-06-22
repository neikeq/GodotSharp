/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class CubeMap : Resource {
  public static readonly int STORAGE_RAW = 0;
  public static readonly int STORAGE_COMPRESS_LOSSY = 1;
  public static readonly int STORAGE_COMPRESS_LOSSLESS = 2;
  public static readonly int SIDE_LEFT = 0;
  public static readonly int SIDE_RIGHT = 1;
  public static readonly int SIDE_BOTTOM = 2;
  public static readonly int SIDE_TOP = 3;
  public static readonly int SIDE_FRONT = 4;
  public static readonly int SIDE_BACK = 5;
  public static readonly int FLAG_MIPMAPS = 1;
  public static readonly int FLAG_REPEAT = 2;
  public static readonly int FLAG_FILTER = 4;
  public static readonly int FLAGS_DEFAULT = 7;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal CubeMap(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.CubeMap_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected CubeMap(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.CubeMap_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(CubeMap obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  ~CubeMap() {
    Dispose();
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          GodotEnginePINVOKE.delete_CubeMap(swigCPtr);
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public int get_width() {
    int ret = GodotEnginePINVOKE.CubeMap_get_width(swigCPtr);
    return ret;
  }

  public int get_height() {
    int ret = GodotEnginePINVOKE.CubeMap_get_height(swigCPtr);
    return ret;
  }

  public new SWIGTYPE_p_RID get_rid() {
    SWIGTYPE_p_RID ret = new SWIGTYPE_p_RID(GodotEnginePINVOKE.CubeMap_get_rid(swigCPtr), true);
    return ret;
  }

  public void set_flags(int flags) {
    GodotEnginePINVOKE.CubeMap_set_flags(swigCPtr, flags);
  }

  public int get_flags() {
    int ret = GodotEnginePINVOKE.CubeMap_get_flags(swigCPtr);
    return ret;
  }

  public void set_side(int side, SWIGTYPE_p_Image image) {
    GodotEnginePINVOKE.CubeMap_set_side(swigCPtr, side, SWIGTYPE_p_Image.getCPtr(image));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Image get_side(int side) {
    SWIGTYPE_p_Image ret = new SWIGTYPE_p_Image(GodotEnginePINVOKE.CubeMap_get_side(swigCPtr, side), true);
    return ret;
  }

  public void set_storage(int mode) {
    GodotEnginePINVOKE.CubeMap_set_storage(swigCPtr, mode);
  }

  public int get_storage() {
    int ret = GodotEnginePINVOKE.CubeMap_get_storage(swigCPtr);
    return ret;
  }

  public void set_lossy_storage_quality(float quality) {
    GodotEnginePINVOKE.CubeMap_set_lossy_storage_quality(swigCPtr, quality);
  }

  public float get_lossy_storage_quality() {
    float ret = GodotEnginePINVOKE.CubeMap_get_lossy_storage_quality(swigCPtr);
    return ret;
  }

  public CubeMap() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_CubeMap());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}