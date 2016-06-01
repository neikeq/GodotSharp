/* mNavigationMeshInstance.i */
%module mNavigationMeshInstance


%typemap(csbody_derived) NavigationMeshInstance %{

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

%typemap(cscode) NavigationMeshInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationMeshInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationMeshInstance;

class NavigationMeshInstance : public Spatial {
public:
  %extend {
    void set_navigation_mesh(Object* navmesh) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_navigation_mesh", navmesh);
    }
  }
  %extend {
    Object* get_navigation_mesh() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_navigation_mesh").operator Object *();
    }
  }
  %extend {
    void set_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled", enabled);
    }
  }
  %extend {
    bool is_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabled");
    }
  }
  NavigationMeshInstance();

};
