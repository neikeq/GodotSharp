/* mSkeleton.i */
%module mSkeleton


%typemap(csbody_derived) Skeleton %{
  public static readonly int NOTIFICATION_UPDATE_SKELETON = 50;

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

%typemap(cscode) Skeleton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Skeleton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Skeleton;

class Skeleton : public Spatial {
public:
  %extend {
    void add_bone(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_bone", name);
    }
  }
  %extend {
    int find_bone(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_bone", name);
    }
  }
  %extend {
    String get_bone_name(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_name", bone_idx);
    }
  }
  %extend {
    int get_bone_parent(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_parent", bone_idx);
    }
  }
  %extend {
    void set_bone_parent(int bone_idx, int parent_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_parent", bone_idx, parent_idx);
    }
  }
  %extend {
    int get_bone_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_count");
    }
  }
  %extend {
    void unparent_bone_and_rest(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unparent_bone_and_rest", bone_idx);
    }
  }
  %extend {
    Transform get_bone_rest(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_rest", bone_idx);
    }
  }
  %extend {
    void set_bone_rest(int bone_idx, const Transform& rest) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_rest", bone_idx, rest);
    }
  }
  %extend {
    void set_bone_disable_rest(int bone_idx, bool disable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_disable_rest", bone_idx, disable);
    }
  }
  %extend {
    bool is_bone_rest_disabled(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_bone_rest_disabled", bone_idx);
    }
  }
  %extend {
    void bind_child_node_to_bone(int bone_idx, Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("bind_child_node_to_bone", bone_idx, node);
    }
  }
  %extend {
    void unbind_child_node_from_bone(int bone_idx, Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unbind_child_node_from_bone", bone_idx, node);
    }
  }
  %extend {
    Array get_bound_child_nodes_to_bone(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bound_child_nodes_to_bone", bone_idx);
    }
  }
  %extend {
    void clear_bones() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_bones");
    }
  }
  %extend {
    Transform get_bone_pose(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_pose", bone_idx);
    }
  }
  %extend {
    void set_bone_pose(int bone_idx, const Transform& pose) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_pose", bone_idx, pose);
    }
  }
  %extend {
    void set_bone_global_pose(int bone_idx, const Transform& pose) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_global_pose", bone_idx, pose);
    }
  }
  %extend {
    Transform get_bone_global_pose(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_global_pose", bone_idx);
    }
  }
  %extend {
    Transform get_bone_custom_pose(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_custom_pose", bone_idx);
    }
  }
  %extend {
    void set_bone_custom_pose(int bone_idx, const Transform& custom_pose) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_custom_pose", bone_idx, custom_pose);
    }
  }
  %extend {
    Transform get_bone_transform(int bone_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_transform", bone_idx);
    }
  }
  Skeleton();

};
