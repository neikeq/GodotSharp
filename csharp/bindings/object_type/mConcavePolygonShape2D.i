/* mConcavePolygonShape2D.i */
%module mConcavePolygonShape2D


%typemap(csbody_derived) ConcavePolygonShape2D %{

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

%typemap(cscode) ConcavePolygonShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConcavePolygonShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ConcavePolygonShape2D;

class ConcavePolygonShape2D : public Shape2D {
public:
  %extend {
    void set_segments(const Vector2Array& segments) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_segments", segments);
    }
  }
  %extend {
    Vector2Array get_segments() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_segments");
    }
  }
  ConcavePolygonShape2D();

};
