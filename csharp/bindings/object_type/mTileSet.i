/* mTileSet.i */
%module mTileSet


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
    }$excode
  }
%}

%nodefaultdtor TileSet;

class TileSet : public Resource {
public:
  %extend {
    void create_tile(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_tile", id);
    }
  }
  %extend {
    void tile_set_name(int id, const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_name", id, name);
    }
  }
  %extend {
    String tile_get_name(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_name", id);
    }
  }
  %extend {
    void tile_set_texture(int id, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_texture", id, texture);
    }
  }
  %extend {
    Ref<Texture> tile_get_texture(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_texture", id).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void tile_set_material(int id, Ref<CanvasItemMaterial> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_material", id, material);
    }
  }
  %extend {
    Ref<CanvasItemMaterial> tile_get_material(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_material", id).operator Object *()->cast_to<CanvasItemMaterial>();
    }
  }
  %extend {
    void tile_set_texture_offset(int id, const Vector2& texture_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_texture_offset", id, texture_offset);
    }
  }
  %extend {
    Vector2 tile_get_texture_offset(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_texture_offset", id);
    }
  }
  %extend {
    void tile_set_shape_offset(int id, const Vector2& shape_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_shape_offset", id, shape_offset);
    }
  }
  %extend {
    Vector2 tile_get_shape_offset(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_shape_offset", id);
    }
  }
  %extend {
    void tile_set_region(int id, const Rect2& region) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_region", id, region);
    }
  }
  %extend {
    Rect2 tile_get_region(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_region", id);
    }
  }
  %extend {
    void tile_set_shape(int id, Ref<Shape2D> shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_shape", id, shape);
    }
  }
  %extend {
    Ref<Shape2D> tile_get_shape(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_shape", id).operator Object *()->cast_to<Shape2D>();
    }
  }
  %extend {
    void tile_set_shapes(int id, const Array& shapes) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_shapes", id, shapes);
    }
  }
  %extend {
    Array tile_get_shapes(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_shapes", id);
    }
  }
  %extend {
    void tile_set_navigation_polygon(int id, Ref<NavigationPolygon> navigation_polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_navigation_polygon", id, navigation_polygon);
    }
  }
  %extend {
    Ref<NavigationPolygon> tile_get_navigation_polygon(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_navigation_polygon", id).operator Object *()->cast_to<NavigationPolygon>();
    }
  }
  %extend {
    void tile_set_navigation_polygon_offset(int id, const Vector2& navigation_polygon_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_navigation_polygon_offset", id, navigation_polygon_offset);
    }
  }
  %extend {
    Vector2 tile_get_navigation_polygon_offset(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_navigation_polygon_offset", id);
    }
  }
  %extend {
    void tile_set_light_occluder(int id, Ref<OccluderPolygon2D> light_occluder) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_light_occluder", id, light_occluder);
    }
  }
  %extend {
    Ref<OccluderPolygon2D> tile_get_light_occluder(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_light_occluder", id).operator Object *()->cast_to<OccluderPolygon2D>();
    }
  }
  %extend {
    void tile_set_occluder_offset(int id, const Vector2& occluder_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("tile_set_occluder_offset", id, occluder_offset);
    }
  }
  %extend {
    Vector2 tile_get_occluder_offset(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tile_get_occluder_offset", id);
    }
  }
  %extend {
    void remove_tile(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_tile", id);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    int get_last_unused_tile_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_last_unused_tile_id");
    }
  }
  %extend {
    int find_tile_by_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_tile_by_name", name);
    }
  }
  %extend {
    Array get_tiles_ids() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tiles_ids");
    }
  }
  TileSet();

};
