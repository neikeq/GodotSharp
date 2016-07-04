/* mPhysics2DDirectSpaceState.i */
%module mPhysics2DDirectSpaceState

%nodefaultctor Physics2DDirectSpaceState;

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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "intersect_point");
  const void* __args[5] = { &point, &max_results, &exclude, &layer_mask, &type_mask };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary intersect_ray(const Vector2& from, const Vector2& to, const Array& exclude = Array(), int layer_mask = 2147483647, int type_mask = 15) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "intersect_ray");
  const void* __args[5] = { &from, &to, &exclude, &layer_mask, &type_mask };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array intersect_shape(Physics2DShapeQueryParameters* shape, int max_results = 32) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "intersect_shape");
  const void* __args[2] = { shape, &max_results };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array cast_motion(Physics2DShapeQueryParameters* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "cast_motion");
  const void* __args[1] = { shape };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array collide_shape(Physics2DShapeQueryParameters* shape, int max_results = 32) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "collide_shape");
  const void* __args[2] = { shape, &max_results };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary get_rest_info(Physics2DShapeQueryParameters* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Physics2DDirectSpaceState", "get_rest_info");
  const void* __args[1] = { shape };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
