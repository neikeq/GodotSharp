/* m_Geometry.i */
%module m_Geometry

%rename(Geometry) _Geometry;
%csmethodmodifiers _Geometry::_Geometry "private"
%csmethodmodifiers _Geometry::SingletonGetInstance "private"
%nodefaultctor _Geometry;

%typemap(csbody_derived) _Geometry %{
  private static $csclassname instance;

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

%typemap(cscode) _Geometry %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Geometry %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _Geometry;

class _Geometry : public Object {
public:

%extend {

Array build_box_planes(const Vector3& extents) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "build_box_planes");
  const void* __args[1] = { &extents };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array build_cylinder_planes(float radius, float height, int sides, int axis = 2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "build_cylinder_planes");
  const void* __args[4] = { &radius, &height, &sides, &axis };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array build_capsule_planes(float radius, float height, int sides, int lats, int axis = 2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "build_capsule_planes");
  const void* __args[5] = { &radius, &height, &sides, &lats, &axis };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float segment_intersects_circle(const Vector2& segment_from, const Vector2& segment_to, const Vector2& circle_pos, float circle_radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_circle");
  const void* __args[4] = { &segment_from, &segment_to, &circle_pos, &circle_radius };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void segment_intersects_segment_2d(const Vector2& from_a, const Vector2& to_a, const Vector2& from_b, const Vector2& to_b) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_segment_2d");
  const void* __args[4] = { &from_a, &to_a, &from_b, &to_b };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector2Array get_closest_points_between_segments_2d(const Vector2& p1, const Vector2& q1, const Vector2& p2, const Vector2& q2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "get_closest_points_between_segments_2d");
  const void* __args[4] = { &p1, &q1, &p2, &q2 };
  Vector2Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3Array get_closest_points_between_segments(const Vector3& p1, const Vector3& p2, const Vector3& q1, const Vector3& q2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "get_closest_points_between_segments");
  const void* __args[4] = { &p1, &p2, &q1, &q2 };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3 get_closest_point_to_segment(const Vector3& point, const Vector3& s1, const Vector3& s2) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "get_closest_point_to_segment");
  const void* __args[3] = { &point, &s1, &s2 };
  Vector3 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_uv84_normal_bit(const Vector3& normal) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "get_uv84_normal_bit");
  const void* __args[1] = { &normal };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void ray_intersects_triangle(const Vector3& from, const Vector3& dir, const Vector3& a, const Vector3& b, const Vector3& c) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "ray_intersects_triangle");
  const void* __args[5] = { &from, &dir, &a, &b, &c };
  __method_bind->ptrcall($self, __args, NULL);
}

void segment_intersects_triangle(const Vector3& from, const Vector3& to, const Vector3& a, const Vector3& b, const Vector3& c) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_triangle");
  const void* __args[5] = { &from, &to, &a, &b, &c };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array segment_intersects_sphere(const Vector3& from, const Vector3& to, const Vector3& spos, float sradius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_sphere");
  const void* __args[4] = { &from, &to, &spos, &sradius };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3Array segment_intersects_cylinder(const Vector3& from, const Vector3& to, float height, float radius) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_cylinder");
  const void* __args[4] = { &from, &to, &height, &radius };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector3Array segment_intersects_convex(const Vector3& from, const Vector3& to, const Array& planes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "segment_intersects_convex");
  const void* __args[3] = { &from, &to, &planes };
  Vector3Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool point_is_inside_triangle(const Vector2& point, const Vector2& a, const Vector2& b, const Vector2& c) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "point_is_inside_triangle");
  const void* __args[4] = { &point, &a, &b, &c };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

IntArray triangulate_polygon(const Vector2Array& polygon) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "triangulate_polygon");
  const void* __args[1] = { &polygon };
  IntArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Dictionary make_atlas(const Vector2Array& sizes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Geometry", "make_atlas");
  const void* __args[1] = { &sizes };
  Dictionary ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static _Geometry* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Geometry")->cast_to<_Geometry>(); }

}


};
