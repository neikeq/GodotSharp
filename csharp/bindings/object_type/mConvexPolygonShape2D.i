/* mConvexPolygonShape2D.i */
%module mConvexPolygonShape2D


%typemap(csbody_derived) ConvexPolygonShape2D %{

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

%typemap(cscode) ConvexPolygonShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConvexPolygonShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConvexPolygonShape2D;

class ConvexPolygonShape2D : public Shape2D {
public:
  %extend {
    void set_point_cloud(const Vector2Array& point_cloud) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_cloud", point_cloud);
    }
  }
  %extend {
    void set_points(const Vector2Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_points", points);
    }
  }
  %extend {
    Vector2Array get_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_points");
    }
  }
  ConvexPolygonShape2D();

};
