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
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_node_a", node);
    }
  }
  %extend {
    NodePath get_node_a() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_a");
    }
  }
  %extend {
    void set_node_b(const NodePath& node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_node_b", node);
    }
  }
  %extend {
    NodePath get_node_b() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_b");
    }
  }
  %extend {
    void set_bias(float bias) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bias", bias);
    }
  }
  %extend {
    float get_bias() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bias");
    }
  }
  %extend {
    void set_exclude_nodes_from_collision(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_exclude_nodes_from_collision", enable);
    }
  }
  %extend {
    bool get_exclude_nodes_from_collision() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_exclude_nodes_from_collision");
    }
  }

};
