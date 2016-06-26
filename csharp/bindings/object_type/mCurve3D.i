/* mCurve3D.i */
%module mCurve3D

template<class Curve3D> class Ref;%template() Ref<Curve3D>;
%feature("novaluewrapper") Ref<Curve3D>;


%typemap(csbody_derived) Curve3D %{

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

%typemap(cscode) Curve3D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Curve3D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Curve3D;

class Curve3D : public Resource {
public:
  Curve3D();

%extend {

int get_point_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_point_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_point(const Vector3& pos, const Vector3& in = Vector3(0, 0, 0), const Vector3& out = Vector3(0, 0, 0), int atpos = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "add_point");
  const void* __args[4] = { &pos, &in, &out, &atpos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_point_pos(int idx, const Vector3& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "set_point_pos");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_point_pos(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_point_pos");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_tilt(int idx, float tilt) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "set_point_tilt");
  const void* __args[2] = { &idx, &tilt };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_point_tilt(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_point_tilt");
  const void* __args[1] = { &idx };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_in(int idx, const Vector3& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "set_point_in");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_point_in(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_point_in");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_out(int idx, const Vector3& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "set_point_out");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 get_point_out(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_point_out");
  const void* __args[1] = { &idx };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_point(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "remove_point");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3 interpolate(int idx, float t) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "interpolate");
  const void* __args[2] = { &idx, &t };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 interpolatef(float fofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "interpolatef");
  const void* __args[1] = { &fofs };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bake_interval(float distance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "set_bake_interval");
  const void* __args[1] = { &distance };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bake_interval() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_bake_interval");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_baked_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_baked_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 interpolate_baked(float offset, bool cubic = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "interpolate_baked");
  const void* __args[2] = { &offset, &cubic };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3Array get_baked_points() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_baked_points");
  Vector3Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RealArray get_baked_tilts() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "get_baked_tilts");
  RealArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3Array tesselate(int max_stages = 5, float tolerance_degrees = 4) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve3D", "tesselate");
  const void* __args[2] = { &max_stages, &tolerance_degrees };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Curve3D() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
