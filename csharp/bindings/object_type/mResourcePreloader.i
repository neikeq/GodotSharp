/* mResourcePreloader.i */
%module mResourcePreloader


%typemap(csbody_derived) ResourcePreloader %{

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

%typemap(cscode) ResourcePreloader %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourcePreloader %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ResourcePreloader;

class ResourcePreloader : public Node {
public:
  ResourcePreloader();

%extend {

void add_resource(const String& name, Object* resource) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "add_resource");
  const void* __args[2] = { &name, resource };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_resource(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "remove_resource");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void rename_resource(const String& name, const String& newname) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "rename_resource");
  const void* __args[2] = { &name, &newname };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_resource(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "has_resource");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_resource(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "get_resource");
  const void* __args[1] = { &name };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_resource_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ResourcePreloader", "get_resource_list");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
