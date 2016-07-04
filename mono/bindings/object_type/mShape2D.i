/* mShape2D.i */
%module mShape2D

%nodefaultctor Shape2D;
template<class Shape2D> class Ref;%template() Ref<Shape2D>;
%feature("novaluewrapper") Ref<Shape2D>;


%typemap(csbody_derived) Shape2D %{

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

%typemap(cscode) Shape2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Shape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Shape2D;

class Shape2D : public Resource {
public:

%extend {

void set_custom_solver_bias(float bias) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "set_custom_solver_bias");
  const void* __args[1] = { &bias };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_custom_solver_bias() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "get_custom_solver_bias");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool collide(const Matrix32& local_xform, Shape2D* with_shape, const Matrix32& shape_xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "collide");
  const void* __args[3] = { &local_xform, with_shape, &shape_xform };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool collide_with_motion(const Matrix32& local_xform, const Vector2& local_motion, Shape2D* with_shape, const Matrix32& shape_xform, const Vector2& shape_motion) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "collide_with_motion");
  const void* __args[5] = { &local_xform, &local_motion, with_shape, &shape_xform, &shape_motion };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant collide_and_get_contacts(const Matrix32& local_xform, Shape2D* with_shape, const Matrix32& shape_xform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "collide_and_get_contacts");
  const void* __args[3] = { &local_xform, with_shape, &shape_xform };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant collide_with_motion_and_get_contacts(const Matrix32& local_xform, const Vector2& local_motion, Shape2D* with_shape, const Matrix32& shape_xform, const Vector2& shape_motion) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shape2D", "collide_with_motion_and_get_contacts");
  const void* __args[5] = { &local_xform, &local_motion, with_shape, &shape_xform, &shape_motion };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Shape2D() {
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
