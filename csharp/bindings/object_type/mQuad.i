/* mQuad.i */
%module mQuad


%typemap(csbody_derived) Quad %{

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

%typemap(cscode) Quad %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Quad %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Quad;

class Quad : public GeometryInstance {
public:
  %extend {
    void set_axis(int axis) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_axis", axis);
    }
  }
  %extend {
    int get_axis() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_axis");
    }
  }
  %extend {
    void set_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size", size);
    }
  }
  %extend {
    Vector2 get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  %extend {
    void set_centered(bool centered) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_centered", centered);
    }
  }
  %extend {
    bool is_centered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_centered");
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
  Quad();

};
