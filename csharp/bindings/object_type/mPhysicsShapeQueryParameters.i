/* mPhysicsShapeQueryParameters.i */
%module mPhysicsShapeQueryParameters


%typemap(csbody_derived) PhysicsShapeQueryParameters %{

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

%typemap(cscode) PhysicsShapeQueryParameters %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsShapeQueryParameters %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor PhysicsShapeQueryParameters;

class PhysicsShapeQueryParameters : public Reference {
public:
  %extend {
    void set_shape(Ref<Shape> shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", shape);
    }
  }
  %extend {
    void set_shape_rid(const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape_rid", shape);
    }
  }
  %extend {
    RID get_shape_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape_rid");
    }
  }
  %extend {
    void set_transform(const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", transform);
    }
  }
  %extend {
    Transform get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
    }
  }
  %extend {
    void set_margin(float margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_margin", margin);
    }
  }
  %extend {
    float get_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin");
    }
  }
  %extend {
    void set_layer_mask(int layer_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", layer_mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }
  %extend {
    void set_object_type_mask(int object_type_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_object_type_mask", object_type_mask);
    }
  }
  %extend {
    int get_object_type_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_object_type_mask");
    }
  }
  %extend {
    void set_exclude(const Array& exclude) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_exclude", exclude);
    }
  }
  %extend {
    Array get_exclude() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_exclude");
    }
  }
  PhysicsShapeQueryParameters();

};
