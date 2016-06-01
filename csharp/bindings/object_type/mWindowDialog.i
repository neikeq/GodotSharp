/* mWindowDialog.i */
%module mWindowDialog


%typemap(csbody_derived) WindowDialog %{

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

%typemap(cscode) WindowDialog %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) WindowDialog %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor WindowDialog;

class WindowDialog : public Popup {
public:
  %extend {
    void set_title(const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_title", title);
    }
  }
  %extend {
    String get_title() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_title");
    }
  }
  %extend {
    TextureButton* get_close_button() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_close_button").operator Object *()->cast_to<TextureButton>();
    }
  }
  WindowDialog();

};
