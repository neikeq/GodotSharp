/* mImmediateGeometry.i */
%module mImmediateGeometry


%typemap(csbody_derived) ImmediateGeometry %{

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

%typemap(cscode) ImmediateGeometry %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ImmediateGeometry %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ImmediateGeometry;

class ImmediateGeometry : public GeometryInstance {
public:
  %extend {
    void begin(int primitive, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("begin", primitive, texture);
    }
  }
  %extend {
    void set_normal(const Vector3& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_normal", normal);
    }
  }
  %extend {
    void set_tangent(const Plane& tangent) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tangent", tangent);
    }
  }
  %extend {
    void set_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color);
    }
  }
  %extend {
    void set_uv(const Vector2& uv) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_uv", uv);
    }
  }
  %extend {
    void set_uv2(const Vector2& uv) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_uv2", uv);
    }
  }
  %extend {
    void add_vertex(const Vector3& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_vertex", pos);
    }
  }
  %extend {
    void add_sphere(int lats, int lons, float radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_sphere", lats, lons, radius);
    }
  }
  %extend {
    void end() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("end");
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  ImmediateGeometry();

};
