/* mStyleBoxTexture.i */
%module mStyleBoxTexture


%typemap(csbody_derived) StyleBoxTexture %{

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

%typemap(cscode) StyleBoxTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxTexture;

class StyleBoxTexture : public StyleBox {
public:
  %extend {
    void set_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", texture);
    }
  }
  %extend {
    Ref<Texture> get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_margin_size(int margin, float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_margin_size", margin, size);
    }
  }
  %extend {
    float get_margin_size(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin_size", margin);
    }
  }
  %extend {
    void set_expand_margin_size(int margin, float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand_margin_size", margin, size);
    }
  }
  %extend {
    float get_expand_margin_size(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_expand_margin_size", margin);
    }
  }
  %extend {
    void set_region_rect(const Rect2& region) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_region_rect", region);
    }
  }
  %extend {
    Rect2 get_region_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_region_rect");
    }
  }
  %extend {
    void set_draw_center(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_center", enable);
    }
  }
  %extend {
    bool get_draw_center() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_center");
    }
  }
  StyleBoxTexture();

};
