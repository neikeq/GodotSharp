/* mTileMap.i */
%module mTileMap


%typemap(csbody_derived) TileMap %{
  public static readonly int INVALID_CELL = -1;
  public static readonly int MODE_SQUARE = 0;
  public static readonly int MODE_ISOMETRIC = 1;
  public static readonly int MODE_CUSTOM = 2;
  public static readonly int HALF_OFFSET_X = 0;
  public static readonly int HALF_OFFSET_Y = 1;
  public static readonly int HALF_OFFSET_DISABLED = 2;
  public static readonly int TILE_ORIGIN_TOP_LEFT = 0;
  public static readonly int TILE_ORIGIN_CENTER = 1;

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

%typemap(cscode) TileMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TileMap %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TileMap;

class TileMap : public Node2D {
public:
  TileMap();

%extend {

void set_tileset(TileSet* tileset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_tileset");
  const void* __args[1] = { tileset };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<TileSet> get_tileset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_tileset");
  Ref<TileSet> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_half_offset(int half_offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_half_offset");
  const void* __args[1] = { &half_offset };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_half_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_half_offset");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_custom_transform(const Matrix32& custom_transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_custom_transform");
  const void* __args[1] = { &custom_transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_custom_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_custom_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cell_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_cell_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_cell_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_cell_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_quadrant_size(int size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_quadrant_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_quadrant_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_quadrant_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_tile_origin(int origin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_tile_origin");
  const void* __args[1] = { &origin };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_tile_origin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_tile_origin");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_center_x(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_center_x");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_center_x() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_center_x");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_center_y(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_center_y");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_center_y() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_center_y");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_y_sort_mode(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_y_sort_mode");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_y_sort_mode_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "is_y_sort_mode_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_use_kinematic(bool use_kinematic) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_collision_use_kinematic");
  const void* __args[1] = { &use_kinematic };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_collision_use_kinematic() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_collision_use_kinematic");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_layer(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_collision_layer");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_collision_layer() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_collision_layer");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_collision_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_collision_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_collision_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_friction(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_collision_friction");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_collision_friction() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_collision_friction");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_collision_bounce(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_collision_bounce");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_collision_bounce() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_collision_bounce");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_occluder_light_mask(int mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_occluder_light_mask");
  const void* __args[1] = { &mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_occluder_light_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_occluder_light_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_cell(int x, int y, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_cell");
  const void* __args[6] = { &x, &y, &tile, &flip_x, &flip_y, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_cellv(const Vector2& pos, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "set_cellv");
  const void* __args[5] = { &pos, &tile, &flip_x, &flip_y, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_cell(int x, int y) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_cell");
  const void* __args[2] = { &x, &y };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_cellv(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_cellv");
  const void* __args[1] = { &pos };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_cell_x_flipped(int x, int y) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "is_cell_x_flipped");
  const void* __args[2] = { &x, &y };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_cell_y_flipped(int x, int y) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "is_cell_y_flipped");
  const void* __args[2] = { &x, &y };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_cell_transposed(int x, int y) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "is_cell_transposed");
  const void* __args[2] = { &x, &y };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

Array get_used_cells() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "get_used_cells");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 map_to_world(const Vector2& mappos, bool ignore_half_ofs = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "map_to_world");
  const void* __args[2] = { &mappos, &ignore_half_ofs };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 world_to_map(const Vector2& worldpos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TileMap", "world_to_map");
  const void* __args[1] = { &worldpos };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
