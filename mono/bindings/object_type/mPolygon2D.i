/* mPolygon2D.i */
%module mPolygon2D


%typemap(csbody_derived) Polygon2D %{

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

%typemap(cscode) Polygon2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Polygon2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Polygon2D;

class Polygon2D : public Node2D {
public:
  Polygon2D();

%extend {

void set_polygon(const Vector2Array& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_polygon");
  const void* __args[1] = { &polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_polygon() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_polygon");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_uv(const Vector2Array& uv) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_uv");
  const void* __args[1] = { &uv };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_uv() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_uv");
  Vector2Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_vertex_colors(const ColorArray& vertex_colors) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_vertex_colors");
  const void* __args[1] = { &vertex_colors };
  __method_bind->ptrcall($self, __args, NULL);
}

ColorArray get_vertex_colors() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_vertex_colors");
  ColorArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture(Object* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture_offset(const Vector2& texture_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_texture_offset");
  const void* __args[1] = { &texture_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_texture_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_texture_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture_rotation(float texture_rotation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_texture_rotation");
  const void* __args[1] = { &texture_rotation };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_texture_rotation() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_texture_rotation");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_texture_scale(const Vector2& texture_scale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_texture_scale");
  const void* __args[1] = { &texture_scale };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_texture_scale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_texture_scale");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_invert(bool invert) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_invert");
  const void* __args[1] = { &invert };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_invert() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_invert");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_invert_border(float invert_border) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_invert_border");
  const void* __args[1] = { &invert_border };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_invert_border() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_invert_border");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offset(const Vector2& offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "set_offset");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Polygon2D", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
