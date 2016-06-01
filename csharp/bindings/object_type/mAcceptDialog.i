/* mAcceptDialog.i */
%module mAcceptDialog


%typemap(csbody_derived) AcceptDialog %{

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

%typemap(cscode) AcceptDialog %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AcceptDialog %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor AcceptDialog;

class AcceptDialog : public WindowDialog {
public:
  %extend {
    Object* get_ok() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ok").operator Object *();
    }
  }
  %extend {
    Object* get_label() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_label").operator Object *();
    }
  }
  %extend {
    void set_hide_on_ok(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hide_on_ok", enabled);
    }
  }
  %extend {
    bool get_hide_on_ok() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_hide_on_ok");
    }
  }
  %extend {
    Button* add_button(const String& text, bool right = false, const String& action = "") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_button", text, right, action).operator Object *()->cast_to<Button>();
    }
  }
  %extend {
    Button* add_cancel(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_cancel", name).operator Object *()->cast_to<Button>();
    }
  }
  %extend {
    LineEdit* register_text_enter(Object* line_edit) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("register_text_enter", line_edit).operator Object *()->cast_to<LineEdit>();
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
  AcceptDialog();

};
