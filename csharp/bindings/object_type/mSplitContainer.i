/* mSplitContainer.i */
%module mSplitContainer

%nodefaultctor SplitContainer;

%typemap(csbody_derived) SplitContainer %{
  public static readonly int DRAGGER_VISIBLE = 0;
  public static readonly int DRAGGER_HIDDEN = 1;
  public static readonly int DRAGGER_HIDDEN_COLLAPSED = 2;

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

%typemap(cscode) SplitContainer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SplitContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SplitContainer;

class SplitContainer : public Container {
public:

%extend {

void set_split_offset(int offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "set_split_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_split_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "get_split_offset");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collapsed(bool collapsed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "set_collapsed");
  const void* __args[1] = { &collapsed };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_collapsed() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "is_collapsed");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_dragger_visibility(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "set_dragger_visibility");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_dragger_visibility() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SplitContainer", "get_dragger_visibility");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
