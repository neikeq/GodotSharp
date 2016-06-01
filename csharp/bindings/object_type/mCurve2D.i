/* mCurve2D.i */
%module mCurve2D


%typemap(csbody_derived) Curve2D %{

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

%typemap(cscode) Curve2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Curve2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Curve2D;

class Curve2D : public Resource {
public:
  %extend {
    int get_point_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_count");
    }
  }
  %extend {
    void add_point(const Vector2& pos, const Vector2& in = Vector2(0,0), const Vector2& out = Vector2(0,0), int atpos = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_point", pos, in, out, atpos);
    }
  }
  %extend {
    void set_point_pos(int idx, const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_pos", idx, pos);
    }
  }
  %extend {
    Vector2 get_point_pos(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_pos", idx);
    }
  }
  %extend {
    void set_point_in(int idx, const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_in", idx, pos);
    }
  }
  %extend {
    Vector2 get_point_in(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_in", idx);
    }
  }
  %extend {
    void set_point_out(int idx, const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_out", idx, pos);
    }
  }
  %extend {
    Vector2 get_point_out(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_out", idx);
    }
  }
  %extend {
    void remove_point(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_point", idx);
    }
  }
  %extend {
    Vector2 interpolate(int idx, float t) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("interpolate", idx, t);
    }
  }
  %extend {
    Vector2 interpolatef(float fofs) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("interpolatef", fofs);
    }
  }
  %extend {
    void set_bake_interval(float distance) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bake_interval", distance);
    }
  }
  %extend {
    float get_bake_interval() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bake_interval");
    }
  }
  %extend {
    float get_baked_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_baked_length");
    }
  }
  %extend {
    Vector2 interpolate_baked(float offset, bool cubic = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("interpolate_baked", offset, cubic);
    }
  }
  %extend {
    Vector2Array get_baked_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_baked_points");
    }
  }
  %extend {
    Vector2Array tesselate(int max_stages = 5, float tolerance_degrees = 4) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tesselate", max_stages, tolerance_degrees);
    }
  }
  Curve2D();

};
