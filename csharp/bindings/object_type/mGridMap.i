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
    }$excode
  }
%}

%nodefaultdtor GridMap;

class GridMap : public Spatial {
public:
  %extend {
    void set_theme(Ref<MeshLibrary> theme) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_theme", theme);
    }
  }
  %extend {
    Ref<MeshLibrary> get_theme() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_theme").operator Object *()->cast_to<MeshLibrary>();
    }
  }
  %extend {
    void set_bake(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bake", enable);
    }
  }
  %extend {
    bool is_baking_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_baking_enabled");
    }
  }
  %extend {
    void set_cell_size(float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_size", size);
    }
  }
  %extend {
    float get_cell_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_size");
    }
  }
  %extend {
    void set_octant_size(int size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_octant_size", size);
    }
  }
  %extend {
    int get_octant_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_octant_size");
    }
  }
  %extend {
    void set_cell_item(int x, int y, int z, int item, int orientation = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cell_item", x, y, z, item, orientation);
    }
  }
  %extend {
    int get_cell_item(int x, int y, int z) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_item", x, y, z);
    }
  }
  %extend {
    int get_cell_item_orientation(int x, int y, int z) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cell_item_orientation", x, y, z);
    }
  }
  %extend {
    void resource_changed(Object* resource) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("resource_changed", resource);
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
    void set_center_z(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_center_z", enable);
    }
  }
  %extend {
    bool get_center_z() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_center_z");
    }
  }
  %extend {
    void set_clip(bool enabled, bool clipabove = true, int floor = 0, int axis = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_clip", enabled, clipabove, floor, axis);
    }
  }
  %extend {
    int create_area(int id, const AABB& area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("create_area", id, area);
    }
  }
  %extend {
    AABB area_get_bounds(int area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_bounds", area);
    }
  }
  %extend {
    void area_set_exterior_portal(int area, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_exterior_portal", area, enable);
    }
  }
  %extend {
    void area_set_name(int area, const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_name", area, name);
    }
  }
  %extend {
    String area_get_name(int area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_name", area);
    }
  }
  %extend {
    bool area_is_exterior_portal(int area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_is_exterior_portal", area);
    }
  }
  %extend {
    void area_set_portal_disable_distance(int area, float distance) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_portal_disable_distance", area, distance);
    }
  }
  %extend {
    float area_get_portal_disable_distance(int area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_portal_disable_distance", area);
    }
  }
  %extend {
    void area_set_portal_disable_color(int area, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("area_set_portal_disable_color", area, color);
    }
  }
  %extend {
    Color area_get_portal_disable_color(int area) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("area_get_portal_disable_color", area);
    }
  }
  %extend {
    void erase_area(int area) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_area", area);
    }
  }
  %extend {
    int get_unused_area_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unused_area_id");
    }
  }
  %extend {
    void bake_geometry() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("bake_geometry");
    }
  }
  %extend {
    void set_use_baked_light(bool use) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_use_baked_light", use);
    }
  }
  %extend {
    bool is_using_baked_light() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_using_baked_light");
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  GridMap();

};
