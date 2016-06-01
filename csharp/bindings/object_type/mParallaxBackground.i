/* mParallaxBackground.i */
%module mParallaxBackground


%typemap(csbody_derived) ParallaxBackground %{

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

%typemap(cscode) ParallaxBackground %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParallaxBackground %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ParallaxBackground;

class ParallaxBackground : public CanvasLayer {
public:
  %extend {
    void set_scroll_offset(const Vector2& ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scroll_offset", ofs);
    }
  }
  %extend {
    Vector2 get_scroll_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scroll_offset");
    }
  }
  %extend {
    void set_scroll_base_offset(const Vector2& ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scroll_base_offset", ofs);
    }
  }
  %extend {
    Vector2 get_scroll_base_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scroll_base_offset");
    }
  }
  %extend {
    void set_scroll_base_scale(const Vector2& scale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_scroll_base_scale", scale);
    }
  }
  %extend {
    Vector2 get_scroll_base_scale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scroll_base_scale");
    }
  }
  %extend {
    void set_limit_begin(const Vector2& ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_limit_begin", ofs);
    }
  }
  %extend {
    Vector2 get_limit_begin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_limit_begin");
    }
  }
  %extend {
    void set_limit_end(const Vector2& ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_limit_end", ofs);
    }
  }
  %extend {
    Vector2 get_limit_end() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_limit_end");
    }
  }
  %extend {
    void set_ignore_camera_zoom(bool ignore) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ignore_camera_zoom", ignore);
    }
  }
  %extend {
    bool is_ignore_camera_zoom() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_ignore_camera_zoom");
    }
  }
  ParallaxBackground();

};
