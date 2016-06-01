/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Label : Control {
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int VALIGN_TOP = 0;
  public static readonly int VALIGN_CENTER = 1;
  public static readonly int VALIGN_BOTTOM = 2;
  public static readonly int VALIGN_FILL = 3;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Label(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Label_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Label(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Label_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Label obj) {
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



  public void set_align(int align) {
    GodotEnginePINVOKE.Label_set_align(swigCPtr, align);
  }

  public int get_align() {
    int ret = GodotEnginePINVOKE.Label_get_align(swigCPtr);
    return ret;
  }

  public void set_valign(int valign) {
    GodotEnginePINVOKE.Label_set_valign(swigCPtr, valign);
  }

  public int get_valign() {
    int ret = GodotEnginePINVOKE.Label_get_valign(swigCPtr);
    return ret;
  }

  public void set_text(string text) {
    GodotEnginePINVOKE.Label_set_text(swigCPtr, text);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public string get_text() {
    string ret = GodotEnginePINVOKE.Label_get_text(swigCPtr);
    return ret;
  }

  public void set_autowrap(bool enable) {
    GodotEnginePINVOKE.Label_set_autowrap(swigCPtr, enable);
  }

  public bool has_autowrap() {
    bool ret = GodotEnginePINVOKE.Label_has_autowrap(swigCPtr);
    return ret;
  }

  public void set_clip_text(bool enable) {
    GodotEnginePINVOKE.Label_set_clip_text(swigCPtr, enable);
  }

  public bool is_clipping_text() {
    bool ret = GodotEnginePINVOKE.Label_is_clipping_text(swigCPtr);
    return ret;
  }

  public void set_uppercase(bool enable) {
    GodotEnginePINVOKE.Label_set_uppercase(swigCPtr, enable);
  }

  public bool is_uppercase() {
    bool ret = GodotEnginePINVOKE.Label_is_uppercase(swigCPtr);
    return ret;
  }

  public int get_line_height() {
    int ret = GodotEnginePINVOKE.Label_get_line_height(swigCPtr);
    return ret;
  }

  public int get_line_count() {
    int ret = GodotEnginePINVOKE.Label_get_line_count(swigCPtr);
    return ret;
  }

  public int get_total_character_count() {
    int ret = GodotEnginePINVOKE.Label_get_total_character_count(swigCPtr);
    return ret;
  }

  public void set_visible_characters(int amount) {
    GodotEnginePINVOKE.Label_set_visible_characters(swigCPtr, amount);
  }

  public int get_visible_characters() {
    int ret = GodotEnginePINVOKE.Label_get_visible_characters(swigCPtr);
    return ret;
  }

  public void set_percent_visible(float percent_visible) {
    GodotEnginePINVOKE.Label_set_percent_visible(swigCPtr, percent_visible);
  }

  public float get_percent_visible() {
    float ret = GodotEnginePINVOKE.Label_get_percent_visible(swigCPtr);
    return ret;
  }

  public void set_lines_skipped(int lines_skipped) {
    GodotEnginePINVOKE.Label_set_lines_skipped(swigCPtr, lines_skipped);
  }

  public int get_lines_skipped() {
    int ret = GodotEnginePINVOKE.Label_get_lines_skipped(swigCPtr);
    return ret;
  }

  public void set_max_lines_visible(int lines_visible) {
    GodotEnginePINVOKE.Label_set_max_lines_visible(swigCPtr, lines_visible);
  }

  public int get_max_lines_visible() {
    int ret = GodotEnginePINVOKE.Label_get_max_lines_visible(swigCPtr);
    return ret;
  }

  public Label() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Label());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
