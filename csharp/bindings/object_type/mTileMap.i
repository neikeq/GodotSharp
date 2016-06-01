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
    }$excode
  }
%}

%nodefaultdtor TileMap;

class TileMap : public Node2D {
public:
  %extend {
    void set_tileset(Ref<TileSet> tileset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tileset", tileset);
    }
  }
  %extend {
    Ref<TileSet> get_tileset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tileset").operator Object *()->cast_to<TileSet>();
    }
  }
  %extend {
    void set_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mode", mode);
    }
  }
  %extend {
    int get_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mode");
    }
  }
  %extend {
    void set_half_offset(int half_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_half_offset", half_offset);
    }
  }
  %extend {
    int get_half_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_half_offset");
    }
  }
  %extend {
    void set_custom_transform(const Matrix32& custom_transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_transform", custom_transform);
    }
  }
  %extend {
    Matrix32 get_custom_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_transform");
    }
  }
  %extend {
    void set_cell_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_size", size);
    }
  }
  %extend {
    Vector2 get_cell_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_size");
    }
  }
  %extend {
    void set_quadrant_size(int size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_quadrant_size", size);
    }
  }
  %extend {
    int get_quadrant_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_quadrant_size");
    }
  }
  %extend {
    void set_tile_origin(int origin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tile_origin", origin);
    }
  }
  %extend {
    int get_tile_origin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tile_origin");
    }
  }
  %extend {
    void set_center_x(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_center_x", enable);
    }
  }
  %extend {
    bool get_center_x() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_center_x");
    }
  }
  %extend {
    void set_center_y(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_center_y", enable);
    }
  }
  %extend {
    bool get_center_y() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_center_y");
    }
  }
  %extend {
    void set_y_sort_mode(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_y_sort_mode", enable);
    }
  }
  %extend {
    bool is_y_sort_mode_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_y_sort_mode_enabled");
    }
  }
  %extend {
    void set_collision_use_kinematic(bool use_kinematic) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_use_kinematic", use_kinematic);
    }
  }
  %extend {
    bool get_collision_use_kinematic() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_use_kinematic");
    }
  }
  %extend {
    void set_collision_layer(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_layer", mask);
    }
  }
  %extend {
    int get_collision_layer() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_layer");
    }
  }
  %extend {
    void set_collision_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_mask", mask);
    }
  }
  %extend {
    int get_collision_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_mask");
    }
  }
  %extend {
    void set_collision_friction(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_friction", value);
    }
  }
  %extend {
    float get_collision_friction() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_friction");
    }
  }
  %extend {
    void set_collision_bounce(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_bounce", value);
    }
  }
  %extend {
    float get_collision_bounce() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_bounce");
    }
  }
  %extend {
    void set_occluder_light_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_occluder_light_mask", mask);
    }
  }
  %extend {
    int get_occluder_light_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_occluder_light_mask");
    }
  }
  %extend {
    void set_cell(int x, int y, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false) {
  Variant::CallError err;
Variant arg_0_ = Variant(x);
Variant arg_1_ = Variant(y);
Variant arg_2_ = Variant(tile);
Variant arg_3_ = Variant(flip_x);
Variant arg_4_ = Variant(flip_y);
Variant arg_5_ = Variant(transpose);
Variant *args_[6] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_ };
$self->call("set_cell", (const Variant **) args_, 6, err);
    }
  }
  %extend {
    void set_cellv(const Vector2& pos, int tile, bool flip_x = false, bool flip_y = false, bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cellv", pos, tile, flip_x, flip_y, transpose);
    }
  }
  %extend {
    int get_cell(int x, int y) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell", x, y);
    }
  }
  %extend {
    int get_cellv(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cellv", pos);
    }
  }
  %extend {
    bool is_cell_x_flipped(int x, int y) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_cell_x_flipped", x, y);
    }
  }
  %extend {
    bool is_cell_y_flipped(int x, int y) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_cell_y_flipped", x, y);
    }
  }
  %extend {
    bool is_cell_transposed(int x, int y) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_cell_transposed", x, y);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    Array get_used_cells() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_used_cells");
    }
  }
  %extend {
    Vector2 map_to_world(const Vector2& mappos, bool ignore_half_ofs = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("map_to_world", mappos, ignore_half_ofs);
    }
  }
  %extend {
    Vector2 world_to_map(const Vector2& worldpos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("world_to_map", worldpos);
    }
  }
  TileMap();

};
