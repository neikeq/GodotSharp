/* mMultiMesh.i */
%module mMultiMesh

%typemap(ctype, out="MultiMesh*") Ref<MultiMesh> "MultiMesh*"
%typemap(out, null="NULL") Ref<MultiMesh> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<MultiMesh> "MultiMesh.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MultiMesh> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MultiMesh> "MultiMesh"
%typemap(csout, excode=SWIGEXCODE) Ref<MultiMesh> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MultiMesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MultiMesh;$excode
    return ret;
}

template<class MultiMesh> class Ref;%template() Ref<MultiMesh>;
%feature("novaluewrapper") Ref<MultiMesh>;


%typemap(csbody_derived) MultiMesh %{

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

%typemap(cscode) MultiMesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MultiMesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MultiMesh;

class MultiMesh : public Resource {
public:
  %extend {
    void set_mesh(Ref<Mesh> mesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mesh", mesh);
    }
  }
  %extend {
    Ref<Mesh> get_mesh() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mesh").operator Object *()->cast_to<Mesh>();
    }
  }
  %extend {
    void set_instance_count(int count) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_instance_count", count);
    }
  }
  %extend {
    int get_instance_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_instance_count");
    }
  }
  %extend {
    void set_instance_transform(int instance, const Transform& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_instance_transform", instance, transform);
    }
  }
  %extend {
    Transform get_instance_transform(int instance) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_instance_transform", instance);
    }
  }
  %extend {
    void set_instance_color(int instance, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_instance_color", instance, color);
    }
  }
  %extend {
    Color get_instance_color(int instance) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_instance_color", instance);
    }
  }
  %extend {
    void set_aabb(const AABB& visibility_aabb) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_aabb", visibility_aabb);
    }
  }
  %extend {
    AABB get_aabb() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_aabb");
    }
  }
  %extend {
    void generate_aabb() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("generate_aabb");
    }
  }
  MultiMesh();
  %extend {
    ~MultiMesh() {
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
