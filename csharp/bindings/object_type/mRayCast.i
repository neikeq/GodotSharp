/* mRayCast.i */
%module mRayCast

%typemap(out) RayCast "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RayCast* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) RayCast %{

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

%typemap(cscode) RayCast %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RayCast %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RayCast;

class RayCast : public Spatial {
public:
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
  %extend {
    void set_cast_to(const Vector3& local_point) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cast_to", local_point);
    }
  }
  %extend {
    Vector3 get_cast_to() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cast_to");
    }
  }
  %extend {
    bool is_colliding() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_colliding");
    }
  }
  %extend {
    Object* get_collider() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider").operator Object *();
    }
  }
  %extend {
    int get_collider_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collider_shape");
    }
  }
  %extend {
    Vector3 get_collision_point() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_point");
    }
  }
  %extend {
    Vector3 get_collision_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_normal");
    }
  }
  %extend {
    void add_exception_rid(const RID& rid) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_exception_rid", rid);
    }
  }
  %extend {
    void add_exception(Object* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_exception", node);
    }
  }
  %extend {
    void remove_exception_rid(const RID& rid) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_exception_rid", rid);
    }
  }
  %extend {
    void remove_exception(Object* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_exception", node);
    }
  }
  %extend {
    void clear_exceptions() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_exceptions");
    }
  }
  %extend {
    void set_layer_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }
  %extend {
    void set_type_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_type_mask", mask);
    }
  }
  %extend {
    int get_type_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_type_mask");
    }
  }
  RayCast();

};
