/* mColorPicker.i */
%module mColorPicker


%typemap(csbody_derived) ColorPicker %{

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

%typemap(cscode) ColorPicker %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorPicker %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorPicker;

class ColorPicker : public BoxContainer {
public:
  %extend {
    void set_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color);
    }
  }
  %extend {
    Color get_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color");
    }
  }
  %extend {
    void set_raw_mode(bool mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_raw_mode", mode);
    }
  }
  %extend {
    bool is_raw_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_raw_mode");
    }
  }
  %extend {
    void set_edit_alpha(bool show) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_edit_alpha", show);
    }
  }
  %extend {
    bool is_editing_alpha() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editing_alpha");
    }
  }
  %extend {
    void add_preset(const Color& arg0_) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_preset", arg0_);
    }
  }
  ColorPicker();

};
