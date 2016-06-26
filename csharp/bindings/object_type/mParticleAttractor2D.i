/* mParticleAttractor2D.i */
%module mParticleAttractor2D


%typemap(csbody_derived) ParticleAttractor2D %{

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

%typemap(cscode) ParticleAttractor2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParticleAttractor2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ParticleAttractor2D;

class ParticleAttractor2D : public Node2D {
public:
  ParticleAttractor2D();

%extend {

void set_enabled(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_enabled");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "is_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_radius(float radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_radius");
  const void* __args[1] = { &radius };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_radius() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "get_radius");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_disable_radius(float radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_disable_radius");
  const void* __args[1] = { &radius };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_disable_radius() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "get_disable_radius");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_gravity(float gravity) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_gravity");
  const void* __args[1] = { &gravity };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_gravity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "get_gravity");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_absorption(float absorption) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_absorption");
  const void* __args[1] = { &absorption };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_absorption() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "get_absorption");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_particles_path(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "set_particles_path");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_particles_path() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ParticleAttractor2D", "get_particles_path");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
