/* mPolygon2D.i */
%module mPolygon2D

%typemap(out) Polygon2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Polygon2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Polygon2D %{

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

%typemap(cscode) Polygon2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Polygon2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Polygon2D;

class Polygon2D : public Node2D {
public:
  %extend {
    void set_polygon(const Vector2Array& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_polygon", polygon);
    }
  }
  %extend {
    Vector2Array get_polygon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon");
    }
  }
  %extend {
    void set_uv(const Vector2Array& uv) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_uv", uv);
    }
  }
  %extend {
    Vector2Array get_uv() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_uv");
    }
  }
  %extend {
    void set_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", color);
    }
  }
  %extend {
    Color get_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color");
    }
  }
  %extend {
    void set_vertex_colors(const ColorArray& vertex_colors) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertex_colors", vertex_colors);
    }
  }
  %extend {
    ColorArray get_vertex_colors() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_colors");
    }
  }
  %extend {
    void set_texture(Object* texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", texture);
    }
  }
  %extend {
    Object* get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *();
    }
  }
  %extend {
    void set_texture_offset(const Vector2& texture_offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_offset", texture_offset);
    }
  }
  %extend {
    Vector2 get_texture_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_offset");
    }
  }
  %extend {
    void set_texture_rotation(float texture_rotation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_rotation", texture_rotation);
    }
  }
  %extend {
    float get_texture_rotation() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_rotation");
    }
  }
  %extend {
    void set_texture_scale(const Vector2& texture_scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture_scale", texture_scale);
    }
  }
  %extend {
    Vector2 get_texture_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_scale");
    }
  }
  %extend {
    void set_invert(bool invert) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_invert", invert);
    }
  }
  %extend {
    bool get_invert() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_invert");
    }
  }
  %extend {
    void set_invert_border(float invert_border) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_invert_border", invert_border);
    }
  }
  %extend {
    float get_invert_border() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_invert_border");
    }
  }
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  Polygon2D();

};
