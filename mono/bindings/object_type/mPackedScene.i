/* mPackedScene.i */
%module mPackedScene

template<class PackedScene> class Ref;%template() Ref<PackedScene>;
%feature("novaluewrapper") Ref<PackedScene>;


%typemap(csbody_derived) PackedScene %{

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

%typemap(cscode) PackedScene %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PackedScene %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PackedScene;

class PackedScene : public Resource {
public:
  PackedScene();

%extend {

int pack(Node* path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PackedScene", "pack");
  const void* __args[1] = { path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Node* instance(bool gen_edit_state = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PackedScene", "instance");
  const void* __args[1] = { &gen_edit_state };
  Node* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool can_instance() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PackedScene", "can_instance");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<SceneState> get_state() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("PackedScene", "get_state");
  Ref<SceneState> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~PackedScene() {
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
