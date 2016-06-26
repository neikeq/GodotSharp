/* mPhysics2DTestMotionResult.i */
%module mPhysics2DTestMotionResult

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
  Physics2DTestMotionResult();

%extend {

Vector2 get_motion() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_motion");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_motion_remainder() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_motion_remainder");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_point() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collision_point");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collision_normal() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collision_normal");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_collider_velocity() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collider_velocity");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collider_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collider_id");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_collider_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collider_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Object* get_collider() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collider");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collider_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DTestMotionResult", "get_collider_shape");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

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
