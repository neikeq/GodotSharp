/* mKinematicBody.i */
%module mKinematicBody


%typemap(csbody_derived) KinematicBody %{

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

%typemap(cscode) KinematicBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) KinematicBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor KinematicBody;

class KinematicBody : public PhysicsBody {
public:
  %extend {
    Vector3 move(const Vector3& rel_vec) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("move", rel_vec);
    }
  }
  %extend {
    Vector3 move_to(const Vector3& position) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("move_to", position);
    }
  }
  %extend {
    bool can_teleport_to(const Vector3& position) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_teleport_to", position);
    }
  }
  %extend {
    bool is_colliding() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_colliding");
    }
  }
  %extend {
    Vector3 get_collision_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_pos");
    }
  }
  %extend {
    Vector3 get_collision_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_normal");
    }
  }
  %extend {
    Vector3 get_collider_velocity() {
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
    void set_collide_with_static_bodies(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collide_with_static_bodies", enable);
    }
  }
  %extend {
    bool can_collide_with_static_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_collide_with_static_bodies");
    }
  }
  %extend {
    void set_collide_with_kinematic_bodies(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collide_with_kinematic_bodies", enable);
    }
  }
  %extend {
    bool can_collide_with_kinematic_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_collide_with_kinematic_bodies");
    }
  }
  %extend {
    void set_collide_with_rigid_bodies(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collide_with_rigid_bodies", enable);
    }
  }
  %extend {
    bool can_collide_with_rigid_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_collide_with_rigid_bodies");
    }
  }
  %extend {
    void set_collide_with_character_bodies(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collide_with_character_bodies", enable);
    }
  }
  %extend {
    bool can_collide_with_character_bodies() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_collide_with_character_bodies");
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
  KinematicBody();

};
