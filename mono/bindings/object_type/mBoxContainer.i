/* mBoxContainer.i */
%module mBoxContainer

%nodefaultctor BoxContainer;

%typemap(csbody_derived) BoxContainer %{
  public static readonly int ALIGN_BEGIN = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_END = 2;

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

%typemap(cscode) BoxContainer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) BoxContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BoxContainer;

class BoxContainer : public Container {
public:

%extend {

void add_spacer(bool begin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BoxContainer", "add_spacer");
  const void* __args[1] = { &begin };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_alignment() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BoxContainer", "get_alignment");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_alignment(int alignment) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BoxContainer", "set_alignment");
  const void* __args[1] = { &alignment };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
