/* mKinematicBody2D.i */
%module mKinematicBody2D


%typemap(csbody_derived) KinematicBody2D %{

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

%typemap(cscode) KinematicBody2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) KinematicBody2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor KinematicBody2D;

class KinematicBody2D : public PhysicsBody2D {
public:
  %extend {
    Vector2 move(const Vector2& rel_vec) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("move", rel_vec);
    }
  }
  %extend {
    Vector2 move_to(const Vector2& position) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("move_to", position);
    }
  }
  %extend {
    bool test_move(const Vector2& rel_vec) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("test_move", rel_vec);
    }
  }
  %extend {
    Vector2 get_travel() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_travel");
    }
  }
  %extend {
    void revert_motion() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("revert_motion");
    }
  }
  %extend {
    bool is_colliding() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_colliding");
    }
  }
  %extend {
    Vector2 get_collision_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_pos");
    }
  }
  %extend {
    Vector2 get_collision_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_normal");
    }
  }
  %extend {
    Vector2 get_collider_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_velocity");
    }
  }
  %extend {
    Object* get_collider() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider").operator Object *();
    }
  }
  %extend {
    int get_collider_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_shape");
    }
  }
  %extend {
    Variant get_collider_metadata() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_metadata");
    }
  }
  %extend {
    void set_collision_margin(float pixels) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collision_margin", pixels);
    }
  }
  %extend {
    float get_collision_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_margin");
    }
  }
  KinematicBody2D();

};
