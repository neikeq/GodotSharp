/* mBaseButton.i */
%module mBaseButton

%nodefaultctor BaseButton;
%typemap(out) BaseButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BaseButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) BaseButton %{
  public static readonly int DRAW_NORMAL = 0;
  public static readonly int DRAW_PRESSED = 1;
  public static readonly int DRAW_HOVER = 2;
  public static readonly int DRAW_DISABLED = 3;

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

%typemap(cscode) BaseButton %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) BaseButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BaseButton;

class BaseButton : public Control {
public:
  %extend {
    void _pressed() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_pressed");
    }
  }
  %extend {
    void _toggled(bool pressed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_toggled", pressed);
    }
  }
  %extend {
    void set_pressed(bool pressed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pressed", pressed);
    }
  }
  %extend {
    bool is_pressed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_pressed");
    }
  }
  %extend {
    bool is_hovered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_hovered");
    }
  }
  %extend {
    void set_toggle_mode(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_toggle_mode", enabled);
    }
  }
  %extend {
    bool is_toggle_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_toggle_mode");
    }
  }
  %extend {
    void set_disabled(bool disabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disabled", disabled);
    }
  }
  %extend {
    bool is_disabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_disabled");
    }
  }
  %extend {
    void set_click_on_press(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_click_on_press", enable);
    }
  }
  %extend {
    bool get_click_on_press() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_click_on_press");
    }
  }
  %extend {
    int get_draw_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_mode");
    }
  }
  %extend {
    void set_enabled_focus_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled_focus_mode", mode);
    }
  }
  %extend {
    int get_enabled_focus_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_enabled_focus_mode");
    }
  }
  %extend {
    void set_shortcut(Object* shortcut) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shortcut", shortcut);
    }
  }
  %extend {
    Object* get_shortcut() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shortcut").operator Object *();
    }
  }

};