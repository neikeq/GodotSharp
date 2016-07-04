/* mWorld2D.i */
%module mWorld2D

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
  World2D();

%extend {

RID get_canvas() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World2D", "get_canvas");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_space() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World2D", "get_space");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_sound_space() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World2D", "get_sound_space");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Physics2DDirectSpaceState* get_direct_space_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("World2D", "get_direct_space_state");
  Physics2DDirectSpaceState* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

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
