/* mKinematicBody2D.i */
%module mKinematicBody2D


%typemap(csbody_derived) KinematicBody2D %{

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

%typemap(cscode) KinematicBody2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) KinematicBody2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor KinematicBody2D;

class KinematicBody2D : public PhysicsBody2D {
public:
  KinematicBody2D();

%extend {

Vector2 move(const Vector2& rel_vec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "move");
  const void* __args[1] = { &rel_vec };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 move_to(const Vector2& position) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "move_to");
  const void* __args[1] = { &position };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool test_move(const Vector2& rel_vec) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "test_move");
  const void* __args[1] = { &rel_vec };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_travel() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_travel");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void revert_motion() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "revert_motion");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_colliding() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "is_colliding");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collision_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_normal() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collision_normal");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collider_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collider_velocity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_collider() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collider");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collider_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collider_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Variant get_collider_metadata() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collider_metadata");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_margin(float pixels) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "set_collision_margin");
  const void* __args[1] = { &pixels };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_collision_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("KinematicBody2D", "get_collision_margin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
