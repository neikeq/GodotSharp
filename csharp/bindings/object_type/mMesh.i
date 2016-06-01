/* mMesh.i */
%module mMesh


%typemap(csbody_derived) Mesh %{
  public static readonly int NO_INDEX_ARRAY = -1;
  public static readonly int ARRAY_WEIGHTS_SIZE = 4;
  public static readonly int ARRAY_VERTEX = 0;
  public static readonly int ARRAY_NORMAL = 1;
  public static readonly int ARRAY_TANGENT = 2;
  public static readonly int ARRAY_COLOR = 3;
  public static readonly int ARRAY_TEX_UV = 4;
  public static readonly int ARRAY_TEX_UV2 = 5;
  public static readonly int ARRAY_BONES = 6;
  public static readonly int ARRAY_WEIGHTS = 7;
  public static readonly int ARRAY_INDEX = 8;
  public static readonly int ARRAY_FORMAT_VERTEX = 1;
  public static readonly int ARRAY_FORMAT_NORMAL = 2;
  public static readonly int ARRAY_FORMAT_TANGENT = 4;
  public static readonly int ARRAY_FORMAT_COLOR = 8;
  public static readonly int ARRAY_FORMAT_TEX_UV = 16;
  public static readonly int ARRAY_FORMAT_TEX_UV2 = 32;
  public static readonly int ARRAY_FORMAT_BONES = 64;
  public static readonly int ARRAY_FORMAT_WEIGHTS = 128;
  public static readonly int ARRAY_FORMAT_INDEX = 256;
  public static readonly int PRIMITIVE_POINTS = 0;
  public static readonly int PRIMITIVE_LINES = 1;
  public static readonly int PRIMITIVE_LINE_STRIP = 2;
  public static readonly int PRIMITIVE_LINE_LOOP = 3;
  public static readonly int PRIMITIVE_TRIANGLES = 4;
  public static readonly int PRIMITIVE_TRIANGLE_STRIP = 5;
  public static readonly int PRIMITIVE_TRIANGLE_FAN = 6;

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

%typemap(cscode) Mesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Mesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Mesh;

class Mesh : public Resource {
public:
  %extend {
    void add_morph_target(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_morph_target", name);
    }
  }
  %extend {
    int get_morph_target_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_morph_target_count");
    }
  }
  %extend {
    String get_morph_target_name(int index) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_morph_target_name", index);
    }
  }
  %extend {
    void clear_morph_targets() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_morph_targets");
    }
  }
  %extend {
    void set_morph_target_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_morph_target_mode", mode);
    }
  }
  %extend {
    int get_morph_target_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_morph_target_mode");
    }
  }
  %extend {
    void add_surface(int primitive, const Array& arrays, const Array& morph_arrays = Array(), bool alphasort = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_surface", primitive, arrays, morph_arrays, alphasort);
    }
  }
  %extend {
    int get_surface_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_surface_count");
    }
  }
  %extend {
    void surface_remove(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("surface_remove", surf_idx);
    }
  }
  %extend {
    int surface_get_array_len(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_array_len", surf_idx);
    }
  }
  %extend {
    int surface_get_array_index_len(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_array_index_len", surf_idx);
    }
  }
  %extend {
    int surface_get_format(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_format", surf_idx);
    }
  }
  %extend {
    int surface_get_primitive_type(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_primitive_type", surf_idx);
    }
  }
  %extend {
    void surface_set_material(int surf_idx, Ref<Material> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("surface_set_material", surf_idx, material);
    }
  }
  %extend {
    Ref<Material> surface_get_material(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_material", surf_idx).operator Object *()->cast_to<Material>();
    }
  }
  %extend {
    void surface_set_name(int surf_idx, const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("surface_set_name", surf_idx, name);
    }
  }
  %extend {
    String surface_get_name(int surf_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("surface_get_name", surf_idx);
    }
  }
  %extend {
    void center_geometry() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("center_geometry");
    }
  }
  %extend {
    void regen_normalmaps() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("regen_normalmaps");
    }
  }
  %extend {
    void set_custom_aabb(const AABB& aabb) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_aabb", aabb);
    }
  }
  %extend {
    AABB get_custom_aabb() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_aabb");
    }
  }
  Mesh();

};
