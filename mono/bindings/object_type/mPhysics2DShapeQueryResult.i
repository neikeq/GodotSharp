/* mPhysics2DShapeQueryResult.i */
%module mPhysics2DShapeQueryResult

%nodefaultctor Physics2DShapeQueryResult;
template<class Physics2DShapeQueryResult> class Ref;%template() Ref<Physics2DShapeQueryResult>;
%feature("novaluewrapper") Ref<Physics2DShapeQueryResult>;


%typemap(csbody_derived) Physics2DShapeQueryResult %{

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

%typemap(cscode) Physics2DShapeQueryResult %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DShapeQueryResult %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DShapeQueryResult;

class Physics2DShapeQueryResult : public Reference {
public:

%extend {

int get_result_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryResult", "get_result_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_result_rid(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryResult", "get_result_rid");
  const void* __args[1] = { &idx };
  RID ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_result_object_id(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryResult", "get_result_object_id");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_result_object(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryResult", "get_result_object");
  const void* __args[1] = { &idx };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_result_object_shape(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryResult", "get_result_object_shape");
  const void* __args[1] = { &idx };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Physics2DShapeQueryResult() {
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
