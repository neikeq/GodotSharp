/* mPatch9Frame.i */
%module mPatch9Frame

%typemap(out) Patch9Frame "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Patch9Frame* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Patch9Frame %{

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

%typemap(cscode) Patch9Frame %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Patch9Frame %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Patch9Frame;

class Patch9Frame : public Control {
public:
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
    void set_modulate(const Color& modulate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", modulate);
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  %extend {
    void set_patch_margin(int margin, int value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_patch_margin", margin, value);
    }
  }
  %extend {
    int get_patch_margin(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_patch_margin", margin);
    }
  }
  %extend {
    void set_region_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_region_rect", rect);
    }
  }
  %extend {
    Rect2 get_region_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_region_rect");
    }
  }
  %extend {
    void set_draw_center(bool draw_center) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_draw_center", draw_center);
    }
  }
  %extend {
    bool get_draw_center() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_draw_center");
    }
  }
  Patch9Frame();

};
