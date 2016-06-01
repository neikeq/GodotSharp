/* mLabel.i */
%module mLabel


%typemap(csbody_derived) Label %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int VALIGN_TOP = 0;
  public static readonly int VALIGN_CENTER = 1;
  public static readonly int VALIGN_BOTTOM = 2;
  public static readonly int VALIGN_FILL = 3;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) : base($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected $csclassname(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init($imclassname.$csclazznameSWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(cscode) Label %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Label %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Label;

class Label : public Control {
public:
  %extend {
    void set_align(int align) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_align", align);
    }
  }
  %extend {
    int get_align() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_align");
    }
  }
  %extend {
    void set_valign(int valign) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_valign", valign);
    }
  }
  %extend {
    int get_valign() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_valign");
    }
  }
  %extend {
    void set_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_text", text);
    }
  }
  %extend {
    String get_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_text");
    }
  }
  %extend {
    void set_autowrap(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_autowrap", enable);
    }
  }
  %extend {
    bool has_autowrap() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_autowrap");
    }
  }
  %extend {
    void set_clip_text(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_clip_text", enable);
    }
  }
  %extend {
    bool is_clipping_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_clipping_text");
    }
  }
  %extend {
    void set_uppercase(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_uppercase", enable);
    }
  }
  %extend {
    bool is_uppercase() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_uppercase");
    }
  }
  %extend {
    int get_line_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line_height");
    }
  }
  %extend {
    int get_line_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line_count");
    }
  }
  %extend {
    int get_total_character_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_total_character_count");
    }
  }
  %extend {
    void set_visible_characters(int amount) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_visible_characters", amount);
    }
  }
  %extend {
    int get_visible_characters() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visible_characters");
    }
  }
  %extend {
    void set_percent_visible(float percent_visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_percent_visible", percent_visible);
    }
  }
  %extend {
    float get_percent_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_percent_visible");
    }
  }
  %extend {
    void set_lines_skipped(int lines_skipped) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_lines_skipped", lines_skipped);
    }
  }
  %extend {
    int get_lines_skipped() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_lines_skipped");
    }
  }
  %extend {
    void set_max_lines_visible(int lines_visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_lines_visible", lines_visible);
    }
  }
  %extend {
    int get_max_lines_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_lines_visible");
    }
  }
  Label();

};
