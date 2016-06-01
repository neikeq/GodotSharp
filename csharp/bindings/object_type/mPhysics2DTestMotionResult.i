/* mPhysics2DTestMotionResult.i */
%module mPhysics2DTestMotionResult


%typemap(csbody_derived) Physics2DTestMotionResult %{

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

%typemap(cscode) Physics2DTestMotionResult %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DTestMotionResult %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Physics2DTestMotionResult;

class Physics2DTestMotionResult : public Reference {
public:
  %extend {
    Vector2 get_motion() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_motion");
    }
  }
  %extend {
    Vector2 get_motion_remainder() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_motion_remainder");
    }
  }
  %extend {
    Vector2 get_collision_point() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_point");
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
    int get_collider_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_id");
    }
  }
  %extend {
    RID get_collider_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_rid");
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
  Physics2DTestMotionResult();

};
