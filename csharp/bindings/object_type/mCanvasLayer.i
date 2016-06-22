/* mCanvasLayer.i */
%module mCanvasLayer

%typemap(out) CanvasLayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CanvasLayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) CanvasLayer %{

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

%typemap(cscode) CanvasLayer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CanvasLayer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CanvasLayer;

class CanvasLayer : public Node {
public:
  %extend {
    void set_layer(int layer) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer", layer);
    }
  }
  %extend {
    int get_layer() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer");
    }
  }
  %extend {
    void set_transform(const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", transform);
    }
  }
  %extend {
    Matrix32 get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
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
    void set_rotation(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotation", radians);
    }
  }
  %extend {
    float get_rotation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotation");
    }
  }
  %extend {
    void set_rotationd(float degrees) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotationd", degrees);
    }
  }
  %extend {
    float get_rotationd() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotationd");
    }
  }
  %extend {
    void set_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scale", scale);
    }
  }
  %extend {
    Vector2 get_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scale");
    }
  }
  %extend {
    Ref<World2D> get_world_2d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_world_2d").operator Object *()->cast_to<World2D>();
    }
  }
  %extend {
    RID get_viewport() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport");
    }
  }
  CanvasLayer();

};
