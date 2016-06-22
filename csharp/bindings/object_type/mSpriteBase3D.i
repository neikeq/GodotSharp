/* mSpriteBase3D.i */
%module mSpriteBase3D

%nodefaultctor SpriteBase3D;
%typemap(out) SpriteBase3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpriteBase3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) SpriteBase3D %{
  public static readonly int FLAG_TRANSPARENT = 0;
  public static readonly int FLAG_SHADED = 1;
  public static readonly int FLAG_MAX = 2;
  public static readonly int ALPHA_CUT_DISABLED = 0;
  public static readonly int ALPHA_CUT_DISCARD = 1;
  public static readonly int ALPHA_CUT_OPAQUE_PREPASS = 2;

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

%typemap(cscode) SpriteBase3D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpriteBase3D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpriteBase3D;

class SpriteBase3D : public GeometryInstance {
public:
  %extend {
    void set_centered(bool centered) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_centered", centered);
    }
  }
  %extend {
    bool is_centered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_centered");
    }
  }
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void set_flip_h(bool flip_h) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_h", flip_h);
    }
  }
  %extend {
    bool is_flipped_h() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_h");
    }
  }
  %extend {
    void set_flip_v(bool flip_v) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flip_v", flip_v);
    }
  }
  %extend {
    bool is_flipped_v() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flipped_v");
    }
  }
  %extend {
    void set_modulate(const Color& modulate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", modulate);
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  %extend {
    void set_opacity(float opacity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_opacity", opacity);
    }
  }
  %extend {
    float get_opacity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_opacity");
    }
  }
  %extend {
    void set_pixel_size(float pixel_size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pixel_size", pixel_size);
    }
  }
  %extend {
    float get_pixel_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pixel_size");
    }
  }
  %extend {
    void set_axis(int axis) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_axis", axis);
    }
  }
  %extend {
    int get_axis() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_axis");
    }
  }
  %extend {
    void set_draw_flag(int flag, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_flag", flag, enabled);
    }
  }
  %extend {
    bool get_draw_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_flag", flag);
    }
  }
  %extend {
    void set_alpha_cut_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_alpha_cut_mode", mode);
    }
  }
  %extend {
    int get_alpha_cut_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_alpha_cut_mode");
    }
  }
  %extend {
    Rect2 get_item_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_rect");
    }
  }

};
