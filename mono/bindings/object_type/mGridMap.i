/* mGridMap.i */
%module mGridMap


%typemap(csbody_derived) GridMap %{
  public static readonly int INVALID_CELL_ITEM = -1;

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

%typemap(cscode) GridMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GridMap %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GridMap;

class GridMap : public Spatial {
public:
  GridMap();

%extend {

void set_theme(MeshLibrary* theme) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_theme");
  const void* __args[1] = { theme };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<MeshLibrary> get_theme() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_theme");
  Ref<MeshLibrary> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bake(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_bake");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_baking_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "is_baking_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cell_size(float size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_cell_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_cell_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_cell_size");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_octant_size(int size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_octant_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_octant_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_octant_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cell_item(int x, int y, int z, int item, int orientation = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_cell_item");
  const void* __args[5] = { &x, &y, &z, &item, &orientation };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cell_item(int x, int y, int z) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_cell_item");
  const void* __args[3] = { &x, &y, &z };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_cell_item_orientation(int x, int y, int z) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_cell_item_orientation");
  const void* __args[3] = { &x, &y, &z };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void resource_changed(Object* resource) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "resource_changed");
  const void* __args[1] = { resource };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_center_x(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_center_x");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_center_x() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_center_x");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_center_y(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_center_y");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_center_y() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_center_y");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_center_z(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_center_z");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_center_z() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_center_z");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_clip(bool enabled, bool clipabove = true, int floor = 0, int axis = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_clip");
  const void* __args[4] = { &enabled, &clipabove, &floor, &axis };
  __method_bind->ptrcall($self, __args, NULL);
}

int create_area(int id, const AABB& area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "create_area");
  const void* __args[2] = { &id, &area };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

AABB area_get_bounds(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_get_bounds");
  const void* __args[1] = { &area };
  AABB ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_exterior_portal(int area, bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_set_exterior_portal");
  const void* __args[2] = { &area, &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void area_set_name(int area, const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_set_name");
  const void* __args[2] = { &area, &name };
  __method_bind->ptrcall($self, __args, NULL);
}

String area_get_name(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_get_name");
  const void* __args[1] = { &area };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool area_is_exterior_portal(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_is_exterior_portal");
  const void* __args[1] = { &area };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_portal_disable_distance(int area, float distance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_set_portal_disable_distance");
  const void* __args[2] = { &area, &distance };
  __method_bind->ptrcall($self, __args, NULL);
}

float area_get_portal_disable_distance(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_get_portal_disable_distance");
  const void* __args[1] = { &area };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void area_set_portal_disable_color(int area, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_set_portal_disable_color");
  const void* __args[2] = { &area, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color area_get_portal_disable_color(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "area_get_portal_disable_color");
  const void* __args[1] = { &area };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void erase_area(int area) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "erase_area");
  const void* __args[1] = { &area };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_unused_area_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "get_unused_area_id");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void bake_geometry() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "bake_geometry");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_use_baked_light(bool use) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "set_use_baked_light");
  const void* __args[1] = { &use };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_using_baked_light() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "is_using_baked_light");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("GridMap", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
