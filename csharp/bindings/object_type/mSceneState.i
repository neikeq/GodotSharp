/* mSceneState.i */
%module mSceneState

%nodefaultctor SceneState;
%typemap(ctype, out="SceneState*") Ref<SceneState> "SceneState*"
%typemap(out, null="NULL") Ref<SceneState> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SceneState> "SceneState.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SceneState> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SceneState> "SceneState"
%typemap(csout, excode=SWIGEXCODE) Ref<SceneState> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SceneState ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SceneState;$excode
    return ret;
}

template<class SceneState> class Ref;%template() Ref<SceneState>;
%feature("novaluewrapper") Ref<SceneState>;


%typemap(csbody_derived) SceneState %{

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

%typemap(cscode) SceneState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SceneState %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SceneState;

class SceneState : public Reference {
public:
  %extend {
    int get_node_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_count");
    }
  }
  %extend {
    String get_node_type(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_type", idx);
    }
  }
  %extend {
    String get_node_name(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_name", idx);
    }
  }
  %extend {
    NodePath get_node_path(int idx, bool for_parent = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_path", idx, for_parent);
    }
  }
  %extend {
    NodePath get_node_owner_path(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_owner_path", idx);
    }
  }
  %extend {
    bool is_node_instance_placeholder(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_node_instance_placeholder", idx);
    }
  }
  %extend {
    String get_node_instance_placeholder(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_instance_placeholder", idx);
    }
  }
  %extend {
    Ref<PackedScene> get_node_instance(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_instance", idx).operator Object *()->cast_to<PackedScene>();
    }
  }
  %extend {
    StringArray get_node_groups(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_groups", idx);
    }
  }
  %extend {
    int get_node_property_count(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_property_count", idx);
    }
  }
  %extend {
    String get_node_property_name(int idx, int prop_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_property_name", idx, prop_idx);
    }
  }
  %extend {
    void get_node_property_value(int idx, int prop_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_node_property_value", idx, prop_idx);
    }
  }
  %extend {
    int get_connection_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_count");
    }
  }
  %extend {
    NodePath get_connection_source(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_source", idx);
    }
  }
  %extend {
    String get_connection_signal(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_signal", idx);
    }
  }
  %extend {
    NodePath get_connection_target(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_target", idx);
    }
  }
  %extend {
    String get_connection_method(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_method", idx);
    }
  }
  %extend {
    int get_connection_flags(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_flags", idx);
    }
  }
  %extend {
    Array get_connection_binds(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_binds", idx);
    }
  }
  %extend {
    ~SceneState() {
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
