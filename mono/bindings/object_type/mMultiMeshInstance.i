/* mMultiMeshInstance.i */
%module mMultiMeshInstance


%typemap(csbody_derived) MultiMeshInstance %{

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

%typemap(cscode) MultiMeshInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MultiMeshInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MultiMeshInstance;

class MultiMeshInstance : public GeometryInstance {
public:
  MultiMeshInstance();

%extend {

void set_multimesh(Object* multimesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMeshInstance", "set_multimesh");
  const void* __args[1] = { multimesh };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_multimesh() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMeshInstance", "get_multimesh");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
