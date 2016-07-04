/* mMultiMesh.i */
%module mMultiMesh

template<class MultiMesh> class Ref;%template() Ref<MultiMesh>;
%feature("novaluewrapper") Ref<MultiMesh>;


%typemap(csbody_derived) MultiMesh %{

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

%typemap(cscode) MultiMesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MultiMesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MultiMesh;

class MultiMesh : public Resource {
public:
  MultiMesh();

%extend {

void set_mesh(Mesh* mesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "set_mesh");
  const void* __args[1] = { mesh };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Mesh> get_mesh() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "get_mesh");
  Ref<Mesh> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_instance_count(int count) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "set_instance_count");
  const void* __args[1] = { &count };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_instance_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "get_instance_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_instance_transform(int instance, const Transform& transform) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "set_instance_transform");
  const void* __args[2] = { &instance, &transform };
  __method_bind->ptrcall($self, __args, NULL);
}

Transform get_instance_transform(int instance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "get_instance_transform");
  const void* __args[1] = { &instance };
  Transform ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_instance_color(int instance, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "set_instance_color");
  const void* __args[2] = { &instance, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_instance_color(int instance) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "get_instance_color");
  const void* __args[1] = { &instance };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_aabb(const AABB& visibility_aabb) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "set_aabb");
  const void* __args[1] = { &visibility_aabb };
  __method_bind->ptrcall($self, __args, NULL);
}

AABB get_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "get_aabb");
  AABB ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void generate_aabb() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MultiMesh", "generate_aabb");
  __method_bind->ptrcall($self, NULL, NULL);
}

~MultiMesh() {
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
