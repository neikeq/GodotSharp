/* mInstancePlaceholder.i */
%module mInstancePlaceholder

%nodefaultctor InstancePlaceholder;

%typemap(csbody_derived) InstancePlaceholder %{

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

%typemap(cscode) InstancePlaceholder %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) InstancePlaceholder %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor InstancePlaceholder;

class InstancePlaceholder : public Node {
public:

%extend {

void replace_by_instance(PackedScene* custom_scene = NULL) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InstancePlaceholder", "replace_by_instance");
  const void* __args[1] = { custom_scene };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_instance_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InstancePlaceholder", "get_instance_path");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
