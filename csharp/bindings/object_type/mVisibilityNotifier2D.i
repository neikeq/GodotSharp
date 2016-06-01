/* mVisibilityNotifier2D.i */
%module mVisibilityNotifier2D


%typemap(csbody_derived) VisibilityNotifier2D %{

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

%typemap(cscode) VisibilityNotifier2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisibilityNotifier2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisibilityNotifier2D;

class VisibilityNotifier2D : public Node2D {
public:
  %extend {
    void set_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rect", rect);
    }
  }
  %extend {
    Rect2 get_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rect");
    }
  }
  %extend {
    bool is_on_screen() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_on_screen");
    }
  }
  VisibilityNotifier2D();

};
