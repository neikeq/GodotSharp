/* mMeshLibrary.i */
%module mMeshLibrary

template<class MeshLibrary> class Ref;%template() Ref<MeshLibrary>;
%feature("novaluewrapper") Ref<MeshLibrary>;


%typemap(csbody_derived) MeshLibrary %{

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

%typemap(cscode) MeshLibrary %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MeshLibrary %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MeshLibrary;

class MeshLibrary : public Resource {
public:
  MeshLibrary();

%extend {

void create_item(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "create_item");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_name(int id, const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "set_item_name");
  const void* __args[2] = { &id, &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_mesh(int id, Mesh* mesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "set_item_mesh");
  const void* __args[2] = { &id, mesh };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_navmesh(int id, NavigationMesh* navmesh) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "set_item_navmesh");
  const void* __args[2] = { &id, navmesh };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_item_shape(int id, Shape* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "set_item_shape");
  const void* __args[2] = { &id, shape };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_item_name(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_item_name");
  const void* __args[1] = { &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Mesh> get_item_mesh(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_item_mesh");
  const void* __args[1] = { &id };
  Ref<Mesh> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<NavigationMesh> get_item_navmesh(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_item_navmesh");
  const void* __args[1] = { &id };
  Ref<NavigationMesh> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Shape> get_item_shape(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_item_shape");
  const void* __args[1] = { &id };
  Ref<Shape> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_item(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "remove_item");
  const void* __args[1] = { &id };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

IntArray get_item_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_item_list");
  IntArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_last_unused_item_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("MeshLibrary", "get_last_unused_item_id");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~MeshLibrary() {
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
