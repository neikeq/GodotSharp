/* mPhysicsBody2D.i */
%module mPhysicsBody2D

%nodefaultctor PhysicsBody2D;

%typemap(csbody_derived) PhysicsBody2D %{

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

%typemap(cscode) PhysicsBody2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsBody2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsBody2D;

class PhysicsBody2D : public CollisionObject2D {
public:

%extend {

void set_layer_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_layer_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_layer_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_collision_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_collision_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_collision_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_mask_bit(int bit, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_collision_mask_bit");
  const void* __args[2] = { &bit, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_collision_mask_bit(int bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_collision_mask_bit");
  const void* __args[1] = { &bit };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_layer_mask_bit(int bit, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_layer_mask_bit");
  const void* __args[2] = { &bit, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_layer_mask_bit(int bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_layer_mask_bit");
  const void* __args[1] = { &bit };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_one_way_collision_direction(const Vector2& dir) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_one_way_collision_direction");
  const void* __args[1] = { &dir };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_one_way_collision_direction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_one_way_collision_direction");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_one_way_collision_max_depth(float depth) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "set_one_way_collision_max_depth");
  const void* __args[1] = { &depth };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_one_way_collision_max_depth() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "get_one_way_collision_max_depth");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_collision_exception_with(PhysicsBody2D* body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "add_collision_exception_with");
  const void* __args[1] = { body };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_collision_exception_with(PhysicsBody2D* body) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PhysicsBody2D", "remove_collision_exception_with");
  const void* __args[1] = { body };
  __method_bind->ptrcall($self, __args, NULL);
}

}


};
