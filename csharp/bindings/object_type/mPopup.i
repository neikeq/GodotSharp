/* mPopup.i */
%module mPopup


%typemap(csbody_derived) Popup %{
  public static readonly int NOTIFICATION_POST_POPUP = 80;
  public static readonly int NOTIFICATION_POPUP_HIDE = 81;

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

%typemap(cscode) Popup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Popup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Popup;

class Popup : public Control {
public:
  %extend {
    void popup_centered(const Vector2& size = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("popup_centered", size);
    }
  }
  %extend {
    void popup_centered_ratio(float ratio = 0.75) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("popup_centered_ratio", ratio);
    }
  }
  %extend {
    void popup_centered_minsize(const Vector2& minsize = Vector2(0,0)) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("popup_centered_minsize", minsize);
    }
  }
  %extend {
    void popup() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("popup");
    }
  }
  %extend {
    void set_exclusive(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_exclusive", enable);
    }
  }
  %extend {
    bool is_exclusive() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_exclusive");
    }
  }
  Popup();

};
