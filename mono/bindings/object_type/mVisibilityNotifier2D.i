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
  VisibilityNotifier2D();

%extend {

void set_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier2D", "set_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier2D", "get_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_on_screen() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier2D", "is_on_screen");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
