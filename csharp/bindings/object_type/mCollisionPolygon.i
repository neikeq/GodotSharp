/* mCollisionPolygon.i */
%module mCollisionPolygon


%typemap(csbody_derived) CollisionPolygon %{

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

%typemap(cscode) CollisionPolygon %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionPolygon %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionPolygon;

class CollisionPolygon : public Spatial {
public:
  %extend {
    void set_build_mode(int build_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_build_mode", build_mode);
    }
  }
  %extend {
    int get_build_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_build_mode");
    }
  }
  %extend {
    void set_depth(float depth) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_depth", depth);
    }
  }
  %extend {
    float get_depth() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_depth");
    }
  }
  %extend {
    void set_polygon(const Vector2Array& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_polygon", polygon);
    }
  }
  %extend {
    Vector2Array get_polygon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon");
    }
  }
  %extend {
    int get_collision_object_first_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_object_first_shape");
    }
  }
  %extend {
    int get_collision_object_last_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_object_last_shape");
    }
  }
  CollisionPolygon();

};
