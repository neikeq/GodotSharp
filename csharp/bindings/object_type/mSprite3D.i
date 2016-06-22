/* mSprite3D.i */
%module mSprite3D

%typemap(out) Sprite3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Sprite3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Sprite3D %{

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

%typemap(cscode) Sprite3D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Sprite3D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Sprite3D;

class Sprite3D : public SpriteBase3D {
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
    void set_region(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_region", enabled);
    }
  }
  %extend {
    bool is_region() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_region");
    }
  }
  %extend {
    void set_region_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_region_rect", rect);
    }
  }
  %extend {
    Rect2 get_region_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_region_rect");
    }
  }
  %extend {
    void set_frame(int frame) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_frame", frame);
    }
  }
  %extend {
    int get_frame() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_frame");
    }
  }
  %extend {
    void set_vframes(int vframes) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vframes", vframes);
    }
  }
  %extend {
    int get_vframes() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vframes");
    }
  }
  %extend {
    void set_hframes(int hframes) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_hframes", hframes);
    }
  }
  %extend {
    int get_hframes() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_hframes");
    }
  }
  Sprite3D();

};
