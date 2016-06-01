/* mNavigationPolygon.i */
%module mNavigationPolygon


%typemap(csbody_derived) NavigationPolygon %{

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

%typemap(cscode) NavigationPolygon %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationPolygon %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationPolygon;

class NavigationPolygon : public Resource {
public:
  %extend {
    void set_vertices(const Vector2Array& vertices) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertices", vertices);
    }
  }
  %extend {
    Vector2Array get_vertices() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertices");
    }
  }
  %extend {
    void add_polygon(const IntArray& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_polygon", polygon);
    }
  }
  %extend {
    int get_polygon_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon_count");
    }
  }
  %extend {
    IntArray get_polygon(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon", idx);
    }
  }
  %extend {
    void clear_polygons() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_polygons");
    }
  }
  %extend {
    void add_outline(const Vector2Array& outline) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_outline", outline);
    }
  }
  %extend {
    void add_outline_at_index(const Vector2Array& outline, int index) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_outline_at_index", outline, index);
    }
  }
  %extend {
    int get_outline_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_outline_count");
    }
  }
  %extend {
    void set_outline(int idx, const Vector2Array& outline) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_outline", idx, outline);
    }
  }
  %extend {
    Vector2Array get_outline(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_outline", idx);
    }
  }
  %extend {
    void remove_outline(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_outline", idx);
    }
  }
  %extend {
    void clear_outlines() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_outlines");
    }
  }
  %extend {
    void make_polygons_from_outlines() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("make_polygons_from_outlines");
    }
  }
  NavigationPolygon();

};
