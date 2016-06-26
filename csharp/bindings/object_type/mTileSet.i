/* mTileSet.i */
%module mTileSet

template<class TileSet> class Ref;%template() Ref<TileSet>;
%feature("novaluewrapper") Ref<TileSet>;


%typemap(csbody_derived) TileSet %{

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

%typemap(cscode) TileSet %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TileSet %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TileSet;

class TileSet : public Resource {
public:
  TileSet();

%extend {

void create_tile(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "create_tile");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void tile_set_name(int id, const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_name");
  const void* __args[2] = { &id, &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String tile_get_name(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_name");
  const void* __args[1] = { &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_texture(int id, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_texture");
  const void* __args[2] = { &id, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> tile_get_texture(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_texture");
  const void* __args[1] = { &id };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_material(int id, CanvasItemMaterial* material) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_material");
  const void* __args[2] = { &id, material };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<CanvasItemMaterial> tile_get_material(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_material");
  const void* __args[1] = { &id };
  Ref<CanvasItemMaterial> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_texture_offset(int id, const Vector2& texture_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_texture_offset");
  const void* __args[2] = { &id, &texture_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 tile_get_texture_offset(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_texture_offset");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_shape_offset(int id, const Vector2& shape_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_shape_offset");
  const void* __args[2] = { &id, &shape_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 tile_get_shape_offset(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_shape_offset");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_region(int id, const Rect2& region) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_region");
  const void* __args[2] = { &id, &region };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 tile_get_region(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_region");
  const void* __args[1] = { &id };
  Rect2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_shape(int id, Shape2D* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_shape");
  const void* __args[2] = { &id, shape };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Shape2D> tile_get_shape(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_shape");
  const void* __args[1] = { &id };
  Ref<Shape2D> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_shapes(int id, const Array& shapes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_shapes");
  const void* __args[2] = { &id, &shapes };
  __method_bind->ptrcall($self, __args, NULL);
}

Array tile_get_shapes(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_shapes");
  const void* __args[1] = { &id };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_navigation_polygon(int id, NavigationPolygon* navigation_polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_navigation_polygon");
  const void* __args[2] = { &id, navigation_polygon };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<NavigationPolygon> tile_get_navigation_polygon(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_navigation_polygon");
  const void* __args[1] = { &id };
  Ref<NavigationPolygon> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_navigation_polygon_offset(int id, const Vector2& navigation_polygon_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_navigation_polygon_offset");
  const void* __args[2] = { &id, &navigation_polygon_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 tile_get_navigation_polygon_offset(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_navigation_polygon_offset");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_light_occluder(int id, OccluderPolygon2D* light_occluder) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_light_occluder");
  const void* __args[2] = { &id, light_occluder };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<OccluderPolygon2D> tile_get_light_occluder(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_light_occluder");
  const void* __args[1] = { &id };
  Ref<OccluderPolygon2D> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void tile_set_occluder_offset(int id, const Vector2& occluder_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_set_occluder_offset");
  const void* __args[2] = { &id, &occluder_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 tile_get_occluder_offset(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "tile_get_occluder_offset");
  const void* __args[1] = { &id };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_tile(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "remove_tile");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_last_unused_tile_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "get_last_unused_tile_id");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int find_tile_by_name(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "find_tile_by_name");
  const void* __args[1] = { &name };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_tiles_ids() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileSet", "get_tiles_ids");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~TileSet() {
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
