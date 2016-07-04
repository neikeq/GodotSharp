/* mBakedLightInstance.i */
%module mBakedLightInstance


%typemap(csbody_derived) BakedLightInstance %{

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

%typemap(cscode) BakedLightInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BakedLightInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BakedLightInstance;

class BakedLightInstance : public VisualInstance {
public:
  BakedLightInstance();

%extend {

void set_baked_light(Object* baked_light) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightInstance", "set_baked_light");
  const void* __args[1] = { baked_light };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_baked_light() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightInstance", "get_baked_light");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_baked_light_instance() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightInstance", "get_baked_light_instance");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
