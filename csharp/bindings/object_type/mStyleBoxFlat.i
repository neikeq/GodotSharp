/* mStyleBoxFlat.i */
%module mStyleBoxFlat


%typemap(csbody_derived) StyleBoxFlat %{

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

%typemap(cscode) StyleBoxFlat %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxFlat %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor StyleBoxFlat;

class StyleBoxFlat : public StyleBox {
public:
  %extend {
    void set_bg_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bg_color", color);
    }
  }
  %extend {
    Color get_bg_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bg_color");
    }
  }
  %extend {
    void set_light_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_light_color", color);
    }
  }
  %extend {
    Color get_light_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_light_color");
    }
  }
  %extend {
    void set_dark_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_dark_color", color);
    }
  }
  %extend {
    Color get_dark_color() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_dark_color");
    }
  }
  %extend {
    void set_border_size(int size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_border_size", size);
    }
  }
  %extend {
    int get_border_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_border_size");
    }
  }
  %extend {
    void set_border_blend(bool blend) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_border_blend", blend);
    }
  }
  %extend {
    bool get_border_blend() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_border_blend");
    }
  }
  %extend {
    void set_draw_center(bool size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_center", size);
    }
  }
  %extend {
    bool get_draw_center() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_center");
    }
  }
  StyleBoxFlat();

};
