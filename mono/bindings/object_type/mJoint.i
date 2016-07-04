/* mJoint.i */
%module mJoint

%nodefaultctor Joint;

%typemap(csbody_derived) Joint %{

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

%typemap(cscode) Joint %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Joint %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Joint;

class Joint : public Spatial {
public:

%extend {

void set_node_a(const NodePath& node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "set_node_a");
  const void* __args[1] = { &node };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_node_a() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "get_node_a");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_node_b(const NodePath& node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "set_node_b");
  const void* __args[1] = { &node };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_node_b() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "get_node_b");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_solver_priority(int priority) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "set_solver_priority");
  const void* __args[1] = { &priority };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_solver_priority() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "get_solver_priority");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_exclude_nodes_from_collision(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "set_exclude_nodes_from_collision");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_exclude_nodes_from_collision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint", "get_exclude_nodes_from_collision");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
