/* mPhysics2DDirectSpaceState.i */
%module mPhysics2DDirectSpaceState

%nodefaultctor Physics2DDirectSpaceState;
%typemap(out) Physics2DDirectSpaceState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DDirectSpaceState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Physics2DDirectSpaceState %{
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

%typemap(cscode) Physics2DDirectSpaceState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DDirectSpaceState %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DDirectSpaceState;

class Physics2DDirectSpaceState : public Object {
public:
  %extend {
    Array intersect_point(const Vector2& point, int max_results = 32, const Array& exclude = Array(), int layer_mask = 2147483647, int type_mask = 15) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("intersect_point", point, max_results, exclude, layer_mask, type_mask);
    }
  }
  %extend {
    Dictionary intersect_ray(const Vector2& from, const Vector2& to, const Array& exclude = Array(), int layer_mask = 2147483647, int type_mask = 15) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("intersect_ray", from, to, exclude, layer_mask, type_mask);
    }
  }
  %extend {
    Array intersect_shape(Ref<Physics2DShapeQueryParameters> shape, int max_results = 32) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("intersect_shape", shape, max_results);
    }
  }
  %extend {
    Array cast_motion(Ref<Physics2DShapeQueryParameters> shape) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("cast_motion", shape);
    }
  }
  %extend {
    Array collide_shape(Ref<Physics2DShapeQueryParameters> shape, int max_results = 32) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide_shape", shape, max_results);
    }
  }
  %extend {
    Dictionary get_rest_info(Ref<Physics2DShapeQueryParameters> shape) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rest_info", shape);
    }
  }

};
