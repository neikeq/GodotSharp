/* mColorPickerButton.i */
%module mColorPickerButton

%typemap(out) ColorPickerButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ColorPickerButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ColorPickerButton %{

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

%typemap(cscode) ColorPickerButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorPickerButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorPickerButton;

class ColorPickerButton : public Button {
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
    ColorPicker* get_picker() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_picker").operator Object *()->cast_to<ColorPicker>();
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
  ColorPickerButton();

};
