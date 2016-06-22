/* mPhysics2DTestMotionResult.i */
%module mPhysics2DTestMotionResult

%typemap(ctype, out="Physics2DTestMotionResult*") Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult*"
%typemap(out, null="NULL") Ref<Physics2DTestMotionResult> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DTestMotionResult> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DTestMotionResult> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DTestMotionResult ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DTestMotionResult;$excode
    return ret;
}

template<class Physics2DTestMotionResult> class Ref;%template() Ref<Physics2DTestMotionResult>;
%feature("novaluewrapper") Ref<Physics2DTestMotionResult>;


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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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
  %extend {
    ~Physics2DTestMotionResult() {
      if ($self->get_script_instance()) {
        CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
        if (cs_instance) {
          cs_instance->mono_object_disposed();
          return;
        }
      }
      if ($self->unreference()) {
        memdelete($self);
      }
    }
  }


};
