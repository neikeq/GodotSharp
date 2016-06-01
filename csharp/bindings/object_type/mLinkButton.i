/* mLinkButton.i */
%module mLinkButton


%typemap(csbody_derived) LinkButton %{
  public static readonly int UNDERLINE_MODE_ALWAYS = 0;
  public static readonly int UNDERLINE_MODE_ON_HOVER = 1;

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

%typemap(cscode) LinkButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LinkButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LinkButton;

class LinkButton : public BaseButton {
public:
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
    void set_underline_mode(int underline_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_underline_mode", underline_mode);
    }
  }
  %extend {
    int get_underline_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_underline_mode");
    }
  }
  LinkButton();

};
