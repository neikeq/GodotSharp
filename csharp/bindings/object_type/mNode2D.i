/* mNode2D.i */
%module mNode2D

%typemap(out) Node2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Node2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Node2D %{

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

%typemap(cscode) Node2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Node2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Node2D;

class Node2D : public CanvasItem {
public:
  %extend {
    void set_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_pos", pos);
    }
  }
  %extend {
    void set_rot(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rot", radians);
    }
  }
  %extend {
    void set_rotd(float degrees) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rotd", degrees);
    }
  }
  %extend {
    void set_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scale", scale);
    }
  }
  %extend {
    Vector2 get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    float get_rot() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rot");
    }
  }
  %extend {
    float get_rotd() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rotd");
    }
  }
  %extend {
    Vector2 get_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scale");
    }
  }
  %extend {
    void rotate(float radians) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("rotate", radians);
    }
  }
  %extend {
    void move_local_x(float delta, bool scaled = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("move_local_x", delta, scaled);
    }
  }
  %extend {
    void move_local_y(float delta, bool scaled = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("move_local_y", delta, scaled);
    }
  }
  %extend {
    void translate(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("translate", offset);
    }
  }
  %extend {
    void global_translate(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("global_translate", offset);
    }
  }
  %extend {
    void scale(const Vector2& ratio) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("scale", ratio);
    }
  }
  %extend {
    void set_global_pos(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_global_pos", pos);
    }
  }
  %extend {
    Vector2 get_global_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_global_pos");
    }
  }
  %extend {
    void set_transform(const Matrix32& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", xform);
    }
  }
  %extend {
    void set_global_transform(const Matrix32& xform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_global_transform", xform);
    }
  }
  %extend {
    void look_at(const Vector2& point) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("look_at", point);
    }
  }
  %extend {
    float get_angle_to(const Vector2& point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_angle_to", point);
    }
  }
  %extend {
    void set_z(int z) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_z", z);
    }
  }
  %extend {
    int get_z() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_z");
    }
  }
  %extend {
    void set_z_as_relative(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_z_as_relative", enable);
    }
  }
  %extend {
    bool is_z_relative() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_z_relative");
    }
  }
  %extend {
    void edit_set_pivot(const Vector2& pivot) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("edit_set_pivot", pivot);
    }
  }
  %extend {
    Matrix32 get_relative_transform_to_parent(Object* parent) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_relative_transform_to_parent", parent);
    }
  }
  Node2D();

};
