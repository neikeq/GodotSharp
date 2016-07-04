/* mLightOccluder2D.i */
%module mLightOccluder2D


%typemap(csbody_derived) LightOccluder2D %{

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

%typemap(cscode) LightOccluder2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LightOccluder2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LightOccluder2D;

class LightOccluder2D : public Node2D {
public:
  LightOccluder2D();

%extend {

void set_occluder_polygon(OccluderPolygon2D* polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LightOccluder2D", "set_occluder_polygon");
  const void* __args[1] = { polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<OccluderPolygon2D> get_occluder_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LightOccluder2D", "get_occluder_polygon");
  Ref<OccluderPolygon2D> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_occluder_light_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LightOccluder2D", "set_occluder_light_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_occluder_light_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LightOccluder2D", "get_occluder_light_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
