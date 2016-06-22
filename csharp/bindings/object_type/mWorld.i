/* mWorld.i */
%module mWorld

%typemap(ctype, out="World*") Ref<World> "World*"
%typemap(out, null="NULL") Ref<World> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<World> "World.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<World> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<World> "World"
%typemap(csout, excode=SWIGEXCODE) Ref<World> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    World ret = InternalHelpers.UnmanagedGetManaged(cPtr) as World;$excode
    return ret;
}

template<class World> class Ref;%template() Ref<World>;
%feature("novaluewrapper") Ref<World>;


%typemap(csbody_derived) World %{

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

%typemap(cscode) World %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) World %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor World;

class World : public Resource {
public:
  %extend {
    RID get_space() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space");
    }
  }
  %extend {
    RID get_scenario() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scenario");
    }
  }
  %extend {
    RID get_sound_space() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sound_space");
    }
  }
  %extend {
    void set_environment(Ref<Environment> env) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_environment", env);
    }
  }
  %extend {
    Ref<Environment> get_environment() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_environment").operator Object *()->cast_to<Environment>();
    }
  }
  %extend {
    PhysicsDirectSpaceState* get_direct_space_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_direct_space_state").operator Object *()->cast_to<PhysicsDirectSpaceState>();
    }
  }
  World();
  %extend {
    ~World() {
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
