/* mMeshLibrary.i */
%module mMeshLibrary

%typemap(ctype, out="MeshLibrary*") Ref<MeshLibrary> "MeshLibrary*"
%typemap(out, null="NULL") Ref<MeshLibrary> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<MeshLibrary> "MeshLibrary.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MeshLibrary> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MeshLibrary> "MeshLibrary"
%typemap(csout, excode=SWIGEXCODE) Ref<MeshLibrary> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MeshLibrary ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MeshLibrary;$excode
    return ret;
}

template<class MeshLibrary> class Ref;%template() Ref<MeshLibrary>;
%feature("novaluewrapper") Ref<MeshLibrary>;


%typemap(csbody_derived) MeshLibrary %{

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

%typemap(cscode) MeshLibrary %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MeshLibrary %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MeshLibrary;

class MeshLibrary : public Resource {
public:
  %extend {
    void create_item(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_item", id);
    }
  }
  %extend {
    void set_item_name(int id, const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_name", id, name);
    }
  }
  %extend {
    void set_item_mesh(int id, Ref<Mesh> mesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_mesh", id, mesh);
    }
  }
  %extend {
    void set_item_navmesh(int id, Ref<NavigationMesh> navmesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_navmesh", id, navmesh);
    }
  }
  %extend {
    void set_item_shape(int id, Ref<Shape> shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_shape", id, shape);
    }
  }
  %extend {
    String get_item_name(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_name", id);
    }
  }
  %extend {
    Ref<Mesh> get_item_mesh(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_mesh", id).operator Object *()->cast_to<Mesh>();
    }
  }
  %extend {
    Ref<NavigationMesh> get_item_navmesh(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_navmesh", id).operator Object *()->cast_to<NavigationMesh>();
    }
  }
  %extend {
    Ref<Shape> get_item_shape(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_shape", id).operator Object *()->cast_to<Shape>();
    }
  }
  %extend {
    void remove_item(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_item", id);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    IntArray get_item_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_list");
    }
  }
  %extend {
    int get_last_unused_item_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_last_unused_item_id");
    }
  }
  MeshLibrary();
  %extend {
    ~MeshLibrary() {
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
