/* mNode2D.i */
%module mNode2D


%typemap(csbody_derived) Node2D %{

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

%typemap(cscode) Node2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Node2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Node2D;

class Node2D : public CanvasItem {
public:
  Node2D();

%extend {

void set_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_rot(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_rot");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_rotd(float degrees) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_rotd");
  const void* __args[1] = { &degrees };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_scale(const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_rot() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_rot");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_rotd() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_rotd");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void rotate(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "rotate");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

void move_local_x(float delta, bool scaled = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "move_local_x");
  const void* __args[2] = { &delta, &scaled };
  __method_bind->ptrcall($self, __args, NULL);
}

void move_local_y(float delta, bool scaled = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "move_local_y");
  const void* __args[2] = { &delta, &scaled };
  __method_bind->ptrcall($self, __args, NULL);
}

void translate(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "translate");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void global_translate(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "global_translate");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void scale(const Vector2& ratio) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "scale");
  const void* __args[1] = { &ratio };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_global_pos(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_global_pos");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_global_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_global_pos");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transform(const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_transform");
  const void* __args[1] = { &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_global_transform(const Matrix32& xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_global_transform");
  const void* __args[1] = { &xform };
  __method_bind->ptrcall($self, __args, NULL);
}

void look_at(const Vector2& point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "look_at");
  const void* __args[1] = { &point };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_angle_to(const Vector2& point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_angle_to");
  const void* __args[1] = { &point };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_z(int z) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_z");
  const void* __args[1] = { &z };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_z() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_z");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_z_as_relative(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "set_z_as_relative");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_z_relative() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "is_z_relative");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void edit_set_pivot(const Vector2& pivot) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "edit_set_pivot");
  const void* __args[1] = { &pivot };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_relative_transform_to_parent(Object* parent) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Node2D", "get_relative_transform_to_parent");
  const void* __args[1] = { parent };
  Matrix32 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
