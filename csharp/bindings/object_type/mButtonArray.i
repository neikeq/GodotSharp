/* mButtonArray.i */
%module mButtonArray

%nodefaultctor ButtonArray;
%typemap(out) ButtonArray "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ButtonArray* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ButtonArray %{
  public static readonly int ALIGN_BEGIN = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_END = 2;
  public static readonly int ALIGN_FILL = 3;
  public static readonly int ALIGN_EXPAND_FILL = 4;

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

%typemap(cscode) ButtonArray %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ButtonArray %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ButtonArray;

class ButtonArray : public Control {
public:
  %extend {
    void add_button(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_button", text);
    }
  }
  %extend {
    void add_icon_button(Ref<Texture> icon, const String& text = "") {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_button", icon, text);
    }
  }
  %extend {
    void set_button_text(int button_idx, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_button_text", button_idx, text);
    }
  }
  %extend {
    void set_button_icon(int button_idx, Ref<Texture> icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_button_icon", button_idx, icon);
    }
  }
  %extend {
    String get_button_text(int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_text", button_idx);
    }
  }
  %extend {
    Ref<Texture> get_button_icon(int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_icon", button_idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    int get_button_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_count");
    }
  }
  %extend {
    int get_selected() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected");
    }
  }
  %extend {
    int get_hovered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_hovered");
    }
  }
  %extend {
    void set_selected(int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_selected", button_idx);
    }
  }
  %extend {
    void erase_button(int button_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_button", button_idx);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }

};
