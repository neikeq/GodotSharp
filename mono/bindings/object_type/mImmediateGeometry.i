/* mImmediateGeometry.i */
%module mImmediateGeometry


%typemap(csbody_derived) ImmediateGeometry %{

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

%typemap(cscode) ImmediateGeometry %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ImmediateGeometry %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ImmediateGeometry;

class ImmediateGeometry : public GeometryInstance {
public:
  ImmediateGeometry();

%extend {

void begin(int primitive, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "begin");
  const void* __args[2] = { &primitive, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_normal(const Vector3& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "set_normal");
  const void* __args[1] = { &normal };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_tangent(const Plane& tangent) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "set_tangent");
  const void* __args[1] = { &tangent };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_uv(const Vector2& uv) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "set_uv");
  const void* __args[1] = { &uv };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_uv2(const Vector2& uv) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "set_uv2");
  const void* __args[1] = { &uv };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_vertex(const Vector3& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "add_vertex");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_sphere(int lats, int lons, float radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "add_sphere");
  const void* __args[3] = { &lats, &lons, &radius };
  __method_bind->ptrcall($self, __args, NULL);
}

void end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "end");
  __method_bind->ptrcall($self, NULL, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImmediateGeometry", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
