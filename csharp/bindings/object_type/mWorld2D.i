/* mWorld2D.i */
%module mWorld2D

%typemap(ctype, out="World2D*") Ref<World2D> "World2D*"
%typemap(out, null="NULL") Ref<World2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<World2D> "World2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<World2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<World2D> "World2D"
%typemap(csout, excode=SWIGEXCODE) Ref<World2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    World2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as World2D;$excode
    return ret;
}

template<class World2D> class Ref;%template() Ref<World2D>;
%feature("novaluewrapper") Ref<World2D>;


%typemap(csbody_derived) World2D %{

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

%typemap(cscode) World2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) World2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor World2D;

class World2D : public Resource {
public:
  %extend {
    RID get_canvas() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_canvas");
    }
  }
  %extend {
    RID get_space() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space");
    }
  }
  %extend {
    RID get_sound_space() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sound_space");
    }
  }
  %extend {
    Physics2DDirectSpaceState* get_direct_space_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_direct_space_state").operator Object *()->cast_to<Physics2DDirectSpaceState>();
    }
  }
  World2D();
  %extend {
    ~World2D() {
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
