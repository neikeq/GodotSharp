/* m_Geometry.i */
%module m_Geometry

%rename(Geometry) _Geometry;
%nodefaultctor _Geometry;

%typemap(csbody_derived) _Geometry %{

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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("build_box_planes", extents);
    }
  }
  %extend {
    Array build_cylinder_planes(float radius, float height, int sides, int axis = 2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("build_cylinder_planes", radius, height, sides, axis);
    }
  }
  %extend {
    Array build_capsule_planes(float radius, float height, int sides, int lats, int axis = 2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("build_capsule_planes", radius, height, sides, lats, axis);
    }
  }
  %extend {
    float segment_intersects_circle(const Vector2& segment_from, const Vector2& segment_to, const Vector2& circle_pos, float circle_radius) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("segment_intersects_circle", segment_from, segment_to, circle_pos, circle_radius);
    }
  }
  %extend {
    void segment_intersects_segment_2d(const Vector2& from_a, const Vector2& to_a, const Vector2& from_b, const Vector2& to_b) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("segment_intersects_segment_2d", from_a, to_a, from_b, to_b);
    }
  }
  %extend {
    Vector2Array get_closest_points_between_segments_2d(const Vector2& p1, const Vector2& q1, const Vector2& p2, const Vector2& q2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_points_between_segments_2d", p1, q1, p2, q2);
    }
  }
  %extend {
    Vector3Array get_closest_points_between_segments(const Vector3& p1, const Vector3& p2, const Vector3& q1, const Vector3& q2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_points_between_segments", p1, p2, q1, q2);
    }
  }
  %extend {
    Vector3 get_closest_point_to_segment(const Vector3& point, const Vector3& s1, const Vector3& s2) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point_to_segment", point, s1, s2);
    }
  }
  %extend {
    int get_uv84_normal_bit(const Vector3& normal) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_uv84_normal_bit", normal);
    }
  }
  %extend {
    void ray_intersects_triangle(const Vector3& from, const Vector3& dir, const Vector3& a, const Vector3& b, const Vector3& c) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("ray_intersects_triangle", from, dir, a, b, c);
    }
  }
  %extend {
    void segment_intersects_triangle(const Vector3& from, const Vector3& to, const Vector3& a, const Vector3& b, const Vector3& c) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("segment_intersects_triangle", from, to, a, b, c);
    }
  }
  %extend {
    Vector3Array segment_intersects_sphere(const Vector3& from, const Vector3& to, const Vector3& spos, float sradius) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("segment_intersects_sphere", from, to, spos, sradius);
    }
  }
  %extend {
    Vector3Array segment_intersects_cylinder(const Vector3& from, const Vector3& to, float height, float radius) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("segment_intersects_cylinder", from, to, height, radius);
    }
  }
  %extend {
    Vector3Array segment_intersects_convex(const Vector3& from, const Vector3& to, const Array& planes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("segment_intersects_convex", from, to, planes);
    }
  }
  %extend {
    bool point_is_inside_triangle(const Vector2& point, const Vector2& a, const Vector2& b, const Vector2& c) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("point_is_inside_triangle", point, a, b, c);
    }
  }
  %extend {
    IntArray triangulate_polygon(const Vector2Array& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("triangulate_polygon", polygon);
    }
  }
  %extend {
    Dictionary make_atlas(const Vector2Array& sizes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("make_atlas", sizes);
    }
  }

};
