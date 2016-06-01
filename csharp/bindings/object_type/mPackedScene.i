/* mPackedScene.i */
%module mPackedScene


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
    }$excode
  }
%}

%nodefaultdtor PackedScene;

class PackedScene : public Resource {
public:
  %extend {
    int pack(Node* path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pack", path);
    }
  }
  %extend {
    Node* instance(bool gen_edit_state = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance", gen_edit_state).operator Object *()->cast_to<Node>();
    }
  }
  %extend {
    bool can_instance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_instance");
    }
  }
  %extend {
    Ref<SceneState> get_state() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_state").operator Object *()->cast_to<SceneState>();
    }
  }
  PackedScene();

};
