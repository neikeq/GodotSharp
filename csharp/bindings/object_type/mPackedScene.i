/* mPackedScene.i */
%module mPackedScene

%typemap(ctype, out="PackedScene*") Ref<PackedScene> "PackedScene*"
%typemap(out, null="NULL") Ref<PackedScene> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PackedScene> "PackedScene.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedScene> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedScene> "PackedScene"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedScene> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedScene ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedScene;$excode
    return ret;
}

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
  %extend {
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
