/* mTouchScreenButton.i */
%module mTouchScreenButton

%typemap(out) TouchScreenButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TouchScreenButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) TouchScreenButton %{

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

%typemap(cscode) TouchScreenButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TouchScreenButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TouchScreenButton;

class TouchScreenButton : public Node2D {
public:
  %extend {
    void set_texture(Object* texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", texture);
    }
  }
  %extend {
    Object* get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *();
    }
  }
  %extend {
    void set_texture_pressed(Object* texture_pressed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_pressed", texture_pressed);
    }
  }
  %extend {
    Object* get_texture_pressed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_pressed").operator Object *();
    }
  }
  %extend {
    void set_bitmask(Object* bitmask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bitmask", bitmask);
    }
  }
  %extend {
    Object* get_bitmask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bitmask").operator Object *();
    }
  }
  %extend {
    void set_action(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_action", action);
    }
  }
  %extend {
    String get_action() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_action");
    }
  }
  %extend {
    void set_visibility_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_visibility_mode", mode);
    }
  }
  %extend {
    int get_visibility_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visibility_mode");
    }
  }
  %extend {
    void set_passby_press(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_passby_press", enabled);
    }
  }
  %extend {
    bool is_passby_press_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_passby_press_enabled");
    }
  }
  %extend {
    bool is_pressed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_pressed");
    }
  }
  TouchScreenButton();

};
