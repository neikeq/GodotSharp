/* mPolygonPathFinder.i */
%module mPolygonPathFinder

%typemap(ctype, out="PolygonPathFinder*") Ref<PolygonPathFinder> "PolygonPathFinder*"
%typemap(out, null="NULL") Ref<PolygonPathFinder> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PolygonPathFinder> "PolygonPathFinder.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PolygonPathFinder> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PolygonPathFinder> "PolygonPathFinder"
%typemap(csout, excode=SWIGEXCODE) Ref<PolygonPathFinder> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PolygonPathFinder ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PolygonPathFinder;$excode
    return ret;
}

template<class PolygonPathFinder> class Ref;%template() Ref<PolygonPathFinder>;
%feature("novaluewrapper") Ref<PolygonPathFinder>;


%typemap(csbody_derived) PolygonPathFinder %{

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

%typemap(cscode) PolygonPathFinder %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PolygonPathFinder %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PolygonPathFinder;

class PolygonPathFinder : public Resource {
public:
  %extend {
    void setup(const Vector2Array& points, const IntArray& connections) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("setup", points, connections);
    }
  }
  %extend {
    Vector2Array find_path(const Vector2& from, const Vector2& to) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("find_path", from, to);
    }
  }
  %extend {
    Vector2Array get_intersections(const Vector2& from, const Vector2& to) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_intersections", from, to);
    }
  }
  %extend {
    Vector2 get_closest_point(const Vector2& point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_closest_point", point);
    }
  }
  %extend {
    bool is_point_inside(const Vector2& point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_point_inside", point);
    }
  }
  %extend {
    void set_point_penalty(int idx, float penalty) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_penalty", idx, penalty);
    }
  }
  %extend {
    float get_point_penalty(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_penalty", idx);
    }
  }
  %extend {
    Rect2 get_bounds() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bounds");
    }
  }
  PolygonPathFinder();
  %extend {
    ~PolygonPathFinder() {
      if ($self->get_script_instance()) {
        CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
        if (cs_instance) {
          cs_instance->mono_object_disposed();
          return;
        }
      }
      if ($self->unreference()) {
        memdelete($self);
      }
    }
  }


};
