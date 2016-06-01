/* mPortal.i */
%module mPortal


%typemap(csbody_derived) Portal %{

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

%typemap(cscode) Portal %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Portal %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Portal;

class Portal : public VisualInstance {
public:
  %extend {
    void set_shape(const Vector2Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", points);
    }
  }
  %extend {
    Vector2Array get_shape() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape");
    }
  }
  %extend {
    void set_enabled(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled", enable);
    }
  }
  %extend {
    bool is_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabled");
    }
  }
  %extend {
    void set_disable_distance(float distance) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disable_distance", distance);
    }
  }
  %extend {
    float get_disable_distance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_disable_distance");
    }
  }
  %extend {
    void set_disabled_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disabled_color", color);
    }
  }
  %extend {
    Color get_disabled_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_disabled_color");
    }
  }
  %extend {
    void set_connect_range(float range) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_connect_range", range);
    }
  }
  %extend {
    float get_connect_range() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connect_range");
    }
  }
  Portal();

};
