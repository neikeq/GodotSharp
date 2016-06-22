/* mJoint.i */
%module mJoint

%nodefaultctor Joint;
%typemap(out) Joint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Joint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


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
    void set_solver_priority(int priority) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_solver_priority", priority);
    }
  }
  %extend {
    int get_solver_priority() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_solver_priority");
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
