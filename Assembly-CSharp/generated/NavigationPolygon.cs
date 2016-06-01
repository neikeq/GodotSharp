/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class NavigationPolygon : Resource {

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal NavigationPolygon(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.NavigationPolygon_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected NavigationPolygon(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.NavigationPolygon_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(NavigationPolygon obj) {
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



  public void set_vertices(SWIGTYPE_p_Vector2Array vertices) {
    GodotEnginePINVOKE.NavigationPolygon_set_vertices(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(vertices));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector2Array get_vertices() {
    SWIGTYPE_p_Vector2Array ret = new SWIGTYPE_p_Vector2Array(GodotEnginePINVOKE.NavigationPolygon_get_vertices(swigCPtr), true);
    return ret;
  }

  public void add_polygon(SWIGTYPE_p_IntArray polygon) {
    GodotEnginePINVOKE.NavigationPolygon_add_polygon(swigCPtr, SWIGTYPE_p_IntArray.getCPtr(polygon));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int get_polygon_count() {
    int ret = GodotEnginePINVOKE.NavigationPolygon_get_polygon_count(swigCPtr);
    return ret;
  }

  public SWIGTYPE_p_IntArray get_polygon(int idx) {
    SWIGTYPE_p_IntArray ret = new SWIGTYPE_p_IntArray(GodotEnginePINVOKE.NavigationPolygon_get_polygon(swigCPtr, idx), true);
    return ret;
  }

  public void clear_polygons() {
    GodotEnginePINVOKE.NavigationPolygon_clear_polygons(swigCPtr);
  }

  public void add_outline(SWIGTYPE_p_Vector2Array outline) {
    GodotEnginePINVOKE.NavigationPolygon_add_outline(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(outline));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void add_outline_at_index(SWIGTYPE_p_Vector2Array outline, int index) {
    GodotEnginePINVOKE.NavigationPolygon_add_outline_at_index(swigCPtr, SWIGTYPE_p_Vector2Array.getCPtr(outline), index);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int get_outline_count() {
    int ret = GodotEnginePINVOKE.NavigationPolygon_get_outline_count(swigCPtr);
    return ret;
  }

  public void set_outline(int idx, SWIGTYPE_p_Vector2Array outline) {
    GodotEnginePINVOKE.NavigationPolygon_set_outline(swigCPtr, idx, SWIGTYPE_p_Vector2Array.getCPtr(outline));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Vector2Array get_outline(int idx) {
    SWIGTYPE_p_Vector2Array ret = new SWIGTYPE_p_Vector2Array(GodotEnginePINVOKE.NavigationPolygon_get_outline(swigCPtr, idx), true);
    return ret;
  }

  public void remove_outline(int idx) {
    GodotEnginePINVOKE.NavigationPolygon_remove_outline(swigCPtr, idx);
  }

  public void clear_outlines() {
    GodotEnginePINVOKE.NavigationPolygon_clear_outlines(swigCPtr);
  }

  public void make_polygons_from_outlines() {
    GodotEnginePINVOKE.NavigationPolygon_make_polygons_from_outlines(swigCPtr);
  }

  public NavigationPolygon() : this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_NavigationPolygon());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
