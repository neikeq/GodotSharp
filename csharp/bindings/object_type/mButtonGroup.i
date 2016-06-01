/* mButtonGroup.i */
%module mButtonGroup


%typemap(csbody_derived) ButtonGroup %{

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

%typemap(cscode) ButtonGroup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ButtonGroup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ButtonGroup;

class ButtonGroup : public BoxContainer {
public:
  %extend {
    BaseButton* get_pressed_button() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pressed_button").operator Object *()->cast_to<BaseButton>();
    }
  }
  %extend {
    int get_pressed_button_index() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pressed_button_index");
    }
  }
  %extend {
    BaseButton* get_focused_button() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_focused_button").operator Object *()->cast_to<BaseButton>();
    }
  }
  %extend {
    Array get_button_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_list");
    }
  }
  %extend {
    void set_pressed_button(BaseButton* button) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pressed_button", button);
    }
  }
  ButtonGroup();

};
