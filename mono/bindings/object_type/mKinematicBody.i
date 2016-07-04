/* mKinematicBody.i */
%module mKinematicBody


%typemap(csbody_derived) KinematicBody %{

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

%typemap(cscode) KinematicBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) KinematicBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor KinematicBody;

class KinematicBody : public PhysicsBody {
public:
  KinematicBody();

%extend {

Vector3 move(const Vector3& rel_vec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "move");
  const void* __args[1] = { &rel_vec };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 move_to(const Vector3& position) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "move_to");
  const void* __args[1] = { &position };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool can_teleport_to(const Vector3& position) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "can_teleport_to");
  const void* __args[1] = { &position };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_colliding() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "is_colliding");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_collision_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collision_pos");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_collision_normal() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collision_normal");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector3 get_collider_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collider_velocity");
  Vector3 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_collider() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collider");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collider_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collider_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collide_with_static_bodies(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "set_collide_with_static_bodies");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_collide_with_static_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "can_collide_with_static_bodies");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collide_with_kinematic_bodies(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "set_collide_with_kinematic_bodies");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_collide_with_kinematic_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "can_collide_with_kinematic_bodies");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collide_with_rigid_bodies(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "set_collide_with_rigid_bodies");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_collide_with_rigid_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "can_collide_with_rigid_bodies");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collide_with_character_bodies(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "set_collide_with_character_bodies");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool can_collide_with_character_bodies() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "can_collide_with_character_bodies");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_margin(float pixels) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "set_collision_margin");
  const void* __args[1] = { &pixels };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_collision_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody", "get_collision_margin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
