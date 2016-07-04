/* mCurve2D.i */
%module mCurve2D

template<class Curve2D> class Ref;%template() Ref<Curve2D>;
%feature("novaluewrapper") Ref<Curve2D>;


%typemap(csbody_derived) Curve2D %{

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

%typemap(cscode) Curve2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Curve2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Curve2D;

class Curve2D : public Resource {
public:
  Curve2D();

%extend {

int get_point_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_point_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_point(const Vector2& pos, const Vector2& in = Vector2(0,0), const Vector2& out = Vector2(0,0), int atpos = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "add_point");
  const void* __args[4] = { &pos, &in, &out, &atpos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_point_pos(int idx, const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "set_point_pos");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_point_pos(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_point_pos");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_in(int idx, const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "set_point_in");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_point_in(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_point_in");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_point_out(int idx, const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "set_point_out");
  const void* __args[2] = { &idx, &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_point_out(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_point_out");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_point(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "remove_point");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 interpolate(int idx, float t) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "interpolate");
  const void* __args[2] = { &idx, &t };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 interpolatef(float fofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "interpolatef");
  const void* __args[1] = { &fofs };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bake_interval(float distance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "set_bake_interval");
  const void* __args[1] = { &distance };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bake_interval() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_bake_interval");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_baked_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_baked_length");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 interpolate_baked(float offset, bool cubic = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "interpolate_baked");
  const void* __args[2] = { &offset, &cubic };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2Array get_baked_points() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "get_baked_points");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2Array tesselate(int max_stages = 5, float tolerance_degrees = 4) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Curve2D", "tesselate");
  const void* __args[2] = { &max_stages, &tolerance_degrees };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Curve2D() {
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
