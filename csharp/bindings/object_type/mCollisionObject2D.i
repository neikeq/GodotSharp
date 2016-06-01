/* mCollisionObject2D.i */
%module mCollisionObject2D

%nodefaultctor CollisionObject2D;

%typemap(csbody_derived) CollisionObject2D %{

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

%typemap(cscode) CollisionObject2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionObject2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionObject2D;

class CollisionObject2D : public Node2D {
public:
  %extend {
    void _input_event(Object* viewport, const InputEvent& event, int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input_event", viewport, event, shape_idx);
    }
  }
  %extend {
    void add_shape(Ref<Shape2D> shape, const Matrix32& transform = Matrix32()) {
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
    void set_shape_transform(int shape_idx, const Matrix32& transform) {
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
    Ref<Shape2D> get_shape(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape", shape_idx).operator Object *()->cast_to<Shape2D>();
    }
  }
  %extend {
    Matrix32 get_shape_transform(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape_transform", shape_idx);
    }
  }
  %extend {
    bool is_shape_set_as_trigger(int shape_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_shape_set_as_trigger", shape_idx);
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
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
    }
  }
  %extend {
    void set_pickable(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pickable", enabled);
    }
  }
  %extend {
    bool is_pickable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_pickable");
    }
  }

};
