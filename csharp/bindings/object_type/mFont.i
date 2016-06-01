/* mFont.i */
%module mFont

%nodefaultctor Font;

%typemap(csbody_derived) Font %{

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

%typemap(cscode) Font %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Font %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Font;

class Font : public Resource {
public:
  %extend {
    void draw(const RID& canvas_item, const Vector2& pos, const String& string, const Color& modulate = Color(1,1,1,1), int clip_w = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw", canvas_item, pos, string, modulate, clip_w);
    }
  }
  %extend {
    float get_ascent() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ascent");
    }
  }
  %extend {
    float get_descent() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_descent");
    }
  }
  %extend {
    float get_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_height");
    }
  }
  %extend {
    bool is_distance_field_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_distance_field_hint");
    }
  }
  %extend {
    Vector2 get_string_size(const String& string) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_string_size", string);
    }
  }
  %extend {
    float draw_char(const RID& canvas_item, const Vector2& pos, int char_, int next = -1, const Color& modulate = Color(1,1,1,1)) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("draw_char", canvas_item, pos, char_, next, modulate);
    }
  }

};
