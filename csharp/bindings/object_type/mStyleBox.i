/* mStyleBox.i */
%module mStyleBox

%nodefaultctor StyleBox;

%typemap(csbody_derived) StyleBox %{

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

%typemap(cscode) StyleBox %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBox %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBox;

class StyleBox : public Resource {
public:
  %extend {
    bool test_mask(const Vector2& point, const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("test_mask", point, rect);
    }
  }
  %extend {
    void set_default_margin(int margin, float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_margin", margin, offset);
    }
  }
  %extend {
    float get_default_margin(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_margin", margin);
    }
  }
  %extend {
    float get_margin(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin", margin);
    }
  }
  %extend {
    Vector2 get_minimum_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_minimum_size");
    }
  }
  %extend {
    Vector2 get_center_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_center_size");
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void draw(const RID& canvas_item, const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw", canvas_item, rect);
    }
  }

};
