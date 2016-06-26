/* mJoint2D.i */
%module mJoint2D

%nodefaultctor Joint2D;

%typemap(csbody_derived) Joint2D %{

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

%typemap(cscode) Joint2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Joint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Joint2D;

class Joint2D : public Node2D {
public:

%extend {

void set_node_a(const NodePath& node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "set_node_a");
  const void* __args[1] = { &node };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_node_a() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "get_node_a");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_node_b(const NodePath& node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "set_node_b");
  const void* __args[1] = { &node };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_node_b() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "get_node_b");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_bias(float bias) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "set_bias");
  const void* __args[1] = { &bias };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_bias() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "get_bias");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_exclude_nodes_from_collision(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "set_exclude_nodes_from_collision");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_exclude_nodes_from_collision() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Joint2D", "get_exclude_nodes_from_collision");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
