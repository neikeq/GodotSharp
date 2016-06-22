/* mPhysicsBody2D.i */
%module mPhysicsBody2D

%nodefaultctor PhysicsBody2D;
%typemap(out) PhysicsBody2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsBody2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) PhysicsBody2D %{

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

%typemap(cscode) PhysicsBody2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsBody2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsBody2D;

class PhysicsBody2D : public CollisionObject2D {
public:
  %extend {
    void set_layer_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }
  %extend {
    void set_collision_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_mask", mask);
    }
  }
  %extend {
    int get_collision_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_mask");
    }
  }
  %extend {
    void set_collision_mask_bit(int bit, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_mask_bit", bit, value);
    }
  }
  %extend {
    bool get_collision_mask_bit(int bit) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_mask_bit", bit);
    }
  }
  %extend {
    void set_layer_mask_bit(int bit, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask_bit", bit, value);
    }
  }
  %extend {
    bool get_layer_mask_bit(int bit) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask_bit", bit);
    }
  }
  %extend {
    void set_one_way_collision_direction(const Vector2& dir) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_one_way_collision_direction", dir);
    }
  }
  %extend {
    Vector2 get_one_way_collision_direction() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_one_way_collision_direction");
    }
  }
  %extend {
    void set_one_way_collision_max_depth(float depth) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_one_way_collision_max_depth", depth);
    }
  }
  %extend {
    float get_one_way_collision_max_depth() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_one_way_collision_max_depth");
    }
  }
  %extend {
    void add_collision_exception_with(PhysicsBody2D* body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_collision_exception_with", body);
    }
  }
  %extend {
    void remove_collision_exception_with(PhysicsBody2D* body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_collision_exception_with", body);
    }
  }

};
