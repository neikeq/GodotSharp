/* mProximityGroup.i */
%module mProximityGroup


%typemap(csbody_derived) ProximityGroup %{

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

%typemap(cscode) ProximityGroup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ProximityGroup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ProximityGroup;

class ProximityGroup : public Spatial {
public:
  ProximityGroup();

%extend {

void set_group_name(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ProximityGroup", "set_group_name");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void broadcast(const String& name, const Variant& parameters) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ProximityGroup", "broadcast");
  const void* __args[2] = { &name, &parameters };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_dispatch_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ProximityGroup", "set_dispatch_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_grid_radius(const Vector3& radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ProximityGroup", "set_grid_radius");
  const void* __args[1] = { &radius };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_grid_radius() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ProximityGroup", "get_grid_radius");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
