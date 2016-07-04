/* mCanvasLayer.i */
%module mCanvasLayer


%typemap(csbody_derived) CanvasLayer %{

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

%typemap(cscode) CanvasLayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CanvasLayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CanvasLayer;

class CanvasLayer : public Node {
public:
  CanvasLayer();

%extend {

void set_layer(int layer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_layer");
  const void* __args[1] = { &layer };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_layer");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transform(const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_transform");
  const void* __args[1] = { &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rotation(float radians) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_rotation");
  const void* __args[1] = { &radians };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_rotation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_rotation");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_rotationd(float degrees) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_rotationd");
  const void* __args[1] = { &degrees };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_rotationd() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_rotationd");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_scale(const Vector2& scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "set_scale");
  const void* __args[1] = { &scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<World2D> get_world_2d() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_world_2d");
  Ref<World2D> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_viewport() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasLayer", "get_viewport");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
