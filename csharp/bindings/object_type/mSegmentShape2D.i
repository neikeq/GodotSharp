/* mSegmentShape2D.i */
%module mSegmentShape2D


%typemap(csbody_derived) SegmentShape2D %{

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

%typemap(cscode) SegmentShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SegmentShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SegmentShape2D;

class SegmentShape2D : public Shape2D {
public:
  %extend {
    void set_a(const Vector2& a) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_a", a);
    }
  }
  %extend {
    Vector2 get_a() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_a");
    }
  }
  %extend {
    void set_b(const Vector2& b) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_b", b);
    }
  }
  %extend {
    Vector2 get_b() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_b");
    }
  }
  SegmentShape2D();

};
