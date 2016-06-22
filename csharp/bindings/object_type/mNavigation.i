/* mNavigation.i */
%module mNavigation

%typemap(out) Navigation "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Navigation* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Navigation %{

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

%typemap(cscode) Navigation %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Navigation %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Navigation;

class Navigation : public Spatial {
public:
  %extend {
    int navmesh_create(Ref<NavigationMesh> mesh, const Transform& xform, Object* owner = NULL) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("navmesh_create", mesh, xform, owner);
    }
  }
  %extend {
    void navmesh_set_transform(int id, const Transform& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("navmesh_set_transform", id, xform);
    }
  }
  %extend {
    void navmesh_remove(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("navmesh_remove", id);
    }
  }
  %extend {
    Vector3Array get_simple_path(const Vector3& start, const Vector3& end, bool optimize = true) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_simple_path", start, end, optimize);
    }
  }
  %extend {
    Vector3 get_closest_point_to_segment(const Vector3& start, const Vector3& end, bool use_collision = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point_to_segment", start, end, use_collision);
    }
  }
  %extend {
    Vector3 get_closest_point(const Vector3& to_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point", to_point);
    }
  }
  %extend {
    Vector3 get_closest_point_normal(const Vector3& to_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point_normal", to_point);
    }
  }
  %extend {
    Object* get_closest_point_owner(const Vector3& to_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point_owner", to_point).operator Object *();
    }
  }
  %extend {
    void set_up_vector(const Vector3& up) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_up_vector", up);
    }
  }
  %extend {
    Vector3 get_up_vector() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_up_vector");
    }
  }
  Navigation();

};
