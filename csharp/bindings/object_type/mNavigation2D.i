/* mNavigation2D.i */
%module mNavigation2D

%typemap(out) Navigation2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Navigation2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Navigation2D %{

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

%typemap(cscode) Navigation2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Navigation2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Navigation2D;

class Navigation2D : public Node2D {
public:
  %extend {
    int navpoly_create(Ref<NavigationPolygon> mesh, const Matrix32& xform, Object* owner = NULL) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("navpoly_create", mesh, xform, owner);
    }
  }
  %extend {
    void navpoly_set_transform(int id, const Matrix32& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("navpoly_set_transform", id, xform);
    }
  }
  %extend {
    void navpoly_remove(int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("navpoly_remove", id);
    }
  }
  %extend {
    Vector2Array get_simple_path(const Vector2& start, const Vector2& end, bool optimize = true) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_simple_path", start, end, optimize);
    }
  }
  %extend {
    Vector2 get_closest_point(const Vector2& to_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point", to_point);
    }
  }
  %extend {
    Object* get_closest_point_owner(const Vector2& to_point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point_owner", to_point).operator Object *();
    }
  }
  Navigation2D();

};
