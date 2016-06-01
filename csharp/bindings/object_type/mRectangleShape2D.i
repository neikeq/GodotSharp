/* mRectangleShape2D.i */
%module mRectangleShape2D


%typemap(csbody_derived) RectangleShape2D %{

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

%typemap(cscode) RectangleShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RectangleShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor RectangleShape2D;

class RectangleShape2D : public Shape2D {
public:
  %extend {
    void set_extents(const Vector2& extents) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_extents", extents);
    }
  }
  %extend {
    Vector2 get_extents() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_extents");
    }
  }
  RectangleShape2D();

};
