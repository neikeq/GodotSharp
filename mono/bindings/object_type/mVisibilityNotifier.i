/* mVisibilityNotifier.i */
%module mVisibilityNotifier


%typemap(csbody_derived) VisibilityNotifier %{

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

%typemap(cscode) VisibilityNotifier %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisibilityNotifier %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisibilityNotifier;

class VisibilityNotifier : public Spatial {
public:
  VisibilityNotifier();

%extend {

void set_aabb(const AABB& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier", "set_aabb");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

AABB get_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier", "get_aabb");
  AABB ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_on_screen() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisibilityNotifier", "is_on_screen");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
