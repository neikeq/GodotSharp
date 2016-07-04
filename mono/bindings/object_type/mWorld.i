/* mWorld.i */
%module mWorld

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
  World();

%extend {

RID get_space() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "get_space");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_scenario() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "get_scenario");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_sound_space() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "get_sound_space");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_environment(Environment* env) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "set_environment");
  const void* __args[1] = { env };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Environment> get_environment() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "get_environment");
  Ref<Environment> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

PhysicsDirectSpaceState* get_direct_space_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World", "get_direct_space_state");
  PhysicsDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

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
