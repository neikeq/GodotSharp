/* mGeometryInstance.i */
%module mGeometryInstance

%nodefaultctor GeometryInstance;

%typemap(csbody_derived) GeometryInstance %{
  public static readonly int FLAG_VISIBLE = 0;
  public static readonly int FLAG_CAST_SHADOW = 3;
  public static readonly int FLAG_RECEIVE_SHADOWS = 4;
  public static readonly int FLAG_BILLBOARD = 1;
  public static readonly int FLAG_BILLBOARD_FIX_Y = 2;
  public static readonly int FLAG_DEPH_SCALE = 5;
  public static readonly int FLAG_VISIBLE_IN_ALL_ROOMS = 6;
  public static readonly int FLAG_MAX = 8;
  public static readonly int SHADOW_CASTING_SETTING_OFF = 0;
  public static readonly int SHADOW_CASTING_SETTING_ON = 1;
  public static readonly int SHADOW_CASTING_SETTING_DOUBLE_SIDED = 2;
  public static readonly int SHADOW_CASTING_SETTING_SHADOWS_ONLY = 3;

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

%typemap(cscode) GeometryInstance %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) GeometryInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GeometryInstance;

class GeometryInstance : public VisualInstance {
public:
  %extend {
    void set_material_override(Object* material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_material_override", material);
    }
  }
  %extend {
    Object* get_material_override() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_material_override").operator Object *();
    }
  }
  %extend {
    void set_flag(int flag, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag", flag, value);
    }
  }
  %extend {
    bool get_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag", flag);
    }
  }
  %extend {
    void set_cast_shadows_setting(int shadow_casting_setting) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cast_shadows_setting", shadow_casting_setting);
    }
  }
  %extend {
    int get_cast_shadows_setting() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cast_shadows_setting");
    }
  }
  %extend {
    void set_draw_range_begin(float mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_range_begin", mode);
    }
  }
  %extend {
    float get_draw_range_begin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_range_begin");
    }
  }
  %extend {
    void set_draw_range_end(float mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_range_end", mode);
    }
  }
  %extend {
    float get_draw_range_end() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_range_end");
    }
  }
  %extend {
    void set_baked_light_texture_id(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_baked_light_texture_id", id);
    }
  }
  %extend {
    int get_baked_light_texture_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_baked_light_texture_id");
    }
  }
  %extend {
    void set_extra_cull_margin(float margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_extra_cull_margin", margin);
    }
  }
  %extend {
    float get_extra_cull_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_extra_cull_margin");
    }
  }

};
