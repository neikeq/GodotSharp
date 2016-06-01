/* mLineShape2D.i */
%module mLineShape2D


%typemap(csbody_derived) LineShape2D %{

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

%typemap(cscode) LineShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LineShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LineShape2D;

class LineShape2D : public Shape2D {
public:
  %extend {
    void set_normal(const Vector2& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_normal", normal);
    }
  }
  %extend {
    Vector2 get_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_normal");
    }
  }
  %extend {
    void set_d(float d) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_d", d);
    }
  }
  %extend {
    float get_d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_d");
    }
  }
  LineShape2D();

};
