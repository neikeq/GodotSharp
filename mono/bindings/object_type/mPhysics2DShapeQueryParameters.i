/* mPhysics2DShapeQueryParameters.i */
%module mPhysics2DShapeQueryParameters

template<class Physics2DShapeQueryParameters> class Ref;%template() Ref<Physics2DShapeQueryParameters>;
%feature("novaluewrapper") Ref<Physics2DShapeQueryParameters>;


%typemap(csbody_derived) Physics2DShapeQueryParameters %{

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

%typemap(cscode) Physics2DShapeQueryParameters %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DShapeQueryParameters %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DShapeQueryParameters;

class Physics2DShapeQueryParameters : public Reference {
public:
  Physics2DShapeQueryParameters();

%extend {

void set_shape(Shape2D* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_shape");
  const void* __args[1] = { shape };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shape_rid(const RID& shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_shape_rid");
  const void* __args[1] = { &shape };
  __method_bind->ptrcall($self, __args, NULL);
}

RID get_shape_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_shape_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_transform(const Matrix32& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_transform");
  const void* __args[1] = { &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Matrix32 get_transform() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_transform");
  Matrix32 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_motion(const Vector2& motion) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_motion");
  const void* __args[1] = { &motion };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2 get_motion() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_motion");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_margin(float margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_margin");
  const void* __args[1] = { &margin };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_margin");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_layer_mask(int layer_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_layer_mask");
  const void* __args[1] = { &layer_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_layer_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_layer_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_object_type_mask(int object_type_mask) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_object_type_mask");
  const void* __args[1] = { &object_type_mask };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_object_type_mask() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_object_type_mask");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_exclude(const Array& exclude) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "set_exclude");
  const void* __args[1] = { &exclude };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_exclude() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DShapeQueryParameters", "get_exclude");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~Physics2DShapeQueryParameters() {
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
