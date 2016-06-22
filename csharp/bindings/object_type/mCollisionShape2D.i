/* mCollisionShape2D.i */
%module mCollisionShape2D

%typemap(out) CollisionShape2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionShape2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) CollisionShape2D %{

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

%typemap(cscode) CollisionShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionShape2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionShape2D;

class CollisionShape2D : public Node2D {
public:
  %extend {
    void set_shape(Object* shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", shape);
    }
  }
  %extend {
    Object* get_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape").operator Object *();
    }
  }
  %extend {
    void set_trigger(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_trigger", enable);
    }
  }
  %extend {
    bool is_trigger() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_trigger");
    }
  }
  %extend {
    int get_collision_object_shape_index() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_collision_object_shape_index");
    }
  }
  CollisionShape2D();

};
