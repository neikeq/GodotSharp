/* mVisualInstance.i */
%module mVisualInstance

%nodefaultctor VisualInstance;

%typemap(csbody_derived) VisualInstance %{

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

%typemap(cscode) VisualInstance %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisualInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisualInstance;

class VisualInstance : public Spatial {
public:

%extend {

void set_base(const RID& base) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualInstance", "set_base");
  const void* __args[1] = { &base };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_layer_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualInstance", "set_layer_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("VisualInstance", "get_layer_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
