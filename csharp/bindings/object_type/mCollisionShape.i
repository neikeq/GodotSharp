/* mCollisionShape.i */
%module mCollisionShape


%typemap(csbody_derived) CollisionShape %{

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

%typemap(cscode) CollisionShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionShape %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor CollisionShape;

class CollisionShape : public Spatial {
public:
  %extend {
    void resource_changed(Object* resource) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("resource_changed", resource);
    }
  }
  %extend {
    void set_shape(Object* shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", shape);
    }
  }
  %extend {
    Object* get_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape").operator Object *();
    }
  }
  %extend {
    void set_trigger(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_trigger", enable);
    }
  }
  %extend {
    bool is_trigger() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_trigger");
    }
  }
  %extend {
    void make_convex_from_brothers() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("make_convex_from_brothers");
    }
  }
  %extend {
    int get_collision_object_shape_index() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_object_shape_index");
    }
  }
  CollisionShape();

};
