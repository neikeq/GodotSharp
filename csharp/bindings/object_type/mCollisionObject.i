/* mCollisionObject.i */
%module mCollisionObject

%nodefaultctor CollisionObject;

%typemap(csbody_derived) CollisionObject %{

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

%typemap(cscode) CollisionObject %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionObject %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor CollisionObject;

class CollisionObject : public Spatial {
public:
  %extend {
    void _input_event(Object* camera, const InputEvent& event, const Vector3& click_pos, const Vector3& click_normal, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input_event", camera, event, click_pos, click_normal, shape_idx);
    }
  }
  %extend {
    void add_shape(Ref<Shape> shape, const Transform& transform = Transform()) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_shape", shape, transform);
    }
  }
  %extend {
    int get_shape_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape_count");
    }
  }
  %extend {
    void set_shape(int shape_idx, Ref<Shape> shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", shape_idx, shape);
    }
  }
  %extend {
    void set_shape_transform(int shape_idx, const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape_transform", shape_idx, transform);
    }
  }
  %extend {
    void set_shape_as_trigger(int shape_idx, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape_as_trigger", shape_idx, enable);
    }
  }
  %extend {
    bool is_shape_set_as_trigger(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_shape_set_as_trigger", shape_idx);
    }
  }
  %extend {
    Ref<Shape> get_shape(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape", shape_idx).operator Object *()->cast_to<Shape>();
    }
  }
  %extend {
    Transform get_shape_transform(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape_transform", shape_idx);
    }
  }
  %extend {
    void remove_shape(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_shape", shape_idx);
    }
  }
  %extend {
    void clear_shapes() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_shapes");
    }
  }
  %extend {
    void set_ray_pickable(bool ray_pickable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ray_pickable", ray_pickable);
    }
  }
  %extend {
    bool is_ray_pickable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_ray_pickable");
    }
  }
  %extend {
    void set_capture_input_on_drag(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_capture_input_on_drag", enable);
    }
  }
  %extend {
    bool get_capture_input_on_drag() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_capture_input_on_drag");
    }
  }
  %extend {
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
    }
  }

};
