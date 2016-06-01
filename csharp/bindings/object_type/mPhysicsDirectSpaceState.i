/* mPhysicsDirectSpaceState.i */
%module mPhysicsDirectSpaceState

%nodefaultctor PhysicsDirectSpaceState;

%typemap(csbody_derived) PhysicsDirectSpaceState %{
  public static readonly int TYPE_MASK_STATIC_BODY = 1;
  public static readonly int TYPE_MASK_KINEMATIC_BODY = 2;
  public static readonly int TYPE_MASK_RIGID_BODY = 4;
  public static readonly int TYPE_MASK_CHARACTER_BODY = 8;
  public static readonly int TYPE_MASK_AREA = 16;
  public static readonly int TYPE_MASK_COLLISION = 15;

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

%typemap(cscode) PhysicsDirectSpaceState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PhysicsDirectSpaceState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PhysicsDirectSpaceState;

class PhysicsDirectSpaceState : public Object {
public:
  %extend {
    Dictionary intersect_ray(const Vector3& from, const Vector3& to, const Array& exclude = Array(), int layer_mask = 2147483647, int type_mask = 15) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("intersect_ray", from, to, exclude, layer_mask, type_mask);
    }
  }
  %extend {
    Array intersect_shape(Ref<PhysicsShapeQueryParameters> shape, int max_results = 32) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("intersect_shape", shape, max_results);
    }
  }
  %extend {
    Array cast_motion(Ref<PhysicsShapeQueryParameters> shape, const Vector3& motion) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cast_motion", shape, motion);
    }
  }
  %extend {
    Array collide_shape(Ref<PhysicsShapeQueryParameters> shape, int max_results = 32) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide_shape", shape, max_results);
    }
  }
  %extend {
    Dictionary get_rest_info(Ref<PhysicsShapeQueryParameters> shape) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rest_info", shape);
    }
  }

};
