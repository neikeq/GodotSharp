/* mWorld2D.i */
%module mWorld2D


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

};
