/* mPhysicsBody.i */
%module mPhysicsBody

%nodefaultctor PhysicsBody;

%typemap(csbody_derived) PhysicsBody %{

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

%typemap(cscode) PhysicsBody %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsBody;

class PhysicsBody : public CollisionObject {
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
    void add_collision_exception_with(PhysicsBody* body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_collision_exception_with", body);
    }
  }
  %extend {
    void remove_collision_exception_with(PhysicsBody* body) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_collision_exception_with", body);
    }
  }

};
