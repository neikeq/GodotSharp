/* mLineEdit.i */
%module mLineEdit


%typemap(csbody_derived) LineEdit %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int MENU_CUT = 0;
  public static readonly int MENU_COPY = 1;
  public static readonly int MENU_PASTE = 2;
  public static readonly int MENU_CLEAR = 3;
  public static readonly int MENU_SELECT_ALL = 4;
  public static readonly int MENU_UNDO = 5;
  public static readonly int MENU_MAX = 6;

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

%typemap(cscode) LineEdit %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LineEdit %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LineEdit;

class LineEdit : public Control {
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
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void select_all() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select_all");
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
    void set_cursor_pos(int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cursor_pos", pos);
    }
  }
  %extend {
    int get_cursor_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cursor_pos");
    }
  }
  %extend {
    void set_max_length(int chars) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max_length", chars);
    }
  }
  %extend {
    int get_max_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max_length");
    }
  }
  %extend {
    void append_at_cursor(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("append_at_cursor", text);
    }
  }
  %extend {
    void set_editable(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editable", enabled);
    }
  }
  %extend {
    bool is_editable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editable");
    }
  }
  %extend {
    void set_secret(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_secret", enabled);
    }
  }
  %extend {
    bool is_secret() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_secret");
    }
  }
  %extend {
    void select(int from = 0, int to = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select", from, to);
    }
  }
  %extend {
    void menu_option(int option) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("menu_option", option);
    }
  }
  %extend {
    PopupMenu* get_menu() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_menu").operator Object *()->cast_to<PopupMenu>();
    }
  }
  LineEdit();

};
