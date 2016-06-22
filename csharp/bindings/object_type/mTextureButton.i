/* mTextureButton.i */
%module mTextureButton

%typemap(out) TextureButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TextureButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) TextureButton %{

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

%typemap(cscode) TextureButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TextureButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TextureButton;

class TextureButton : public BaseButton {
public:
  %extend {
    void set_normal_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_normal_texture", texture);
    }
  }
  %extend {
    void set_pressed_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pressed_texture", texture);
    }
  }
  %extend {
    void set_hover_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hover_texture", texture);
    }
  }
  %extend {
    void set_disabled_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disabled_texture", texture);
    }
  }
  %extend {
    void set_focused_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_focused_texture", texture);
    }
  }
  %extend {
    void set_click_mask(Ref<BitMap> mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_click_mask", mask);
    }
  }
  %extend {
    void set_texture_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_scale", scale);
    }
  }
  %extend {
    void set_modulate(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", color);
    }
  }
  %extend {
    Ref<Texture> get_normal_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_normal_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<Texture> get_pressed_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pressed_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<Texture> get_hover_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_hover_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<Texture> get_disabled_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_disabled_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<Texture> get_focused_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_focused_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Ref<BitMap> get_click_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_click_mask").operator Object *()->cast_to<BitMap>();
    }
  }
  %extend {
    Vector2 get_texture_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_scale");
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  TextureButton();

};
