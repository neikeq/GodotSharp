/* mBackBufferCopy.i */
%module mBackBufferCopy


%typemap(csbody_derived) BackBufferCopy %{
  public static readonly int COPY_MODE_DISABLED = 0;
  public static readonly int COPY_MODE_RECT = 1;
  public static readonly int COPY_MODE_VIEWPORT = 2;

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

%typemap(cscode) BackBufferCopy %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BackBufferCopy %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BackBufferCopy;

class BackBufferCopy : public Node2D {
public:
  BackBufferCopy();

%extend {

void set_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BackBufferCopy", "set_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BackBufferCopy", "get_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_copy_mode(int copy_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BackBufferCopy", "set_copy_mode");
  const void* __args[1] = { &copy_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_copy_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BackBufferCopy", "get_copy_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
