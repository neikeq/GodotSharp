/* mConvexPolygonShape.i */
%module mConvexPolygonShape


%typemap(csbody_derived) ConvexPolygonShape %{

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

%typemap(cscode) ConvexPolygonShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConvexPolygonShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ConvexPolygonShape;

class ConvexPolygonShape : public Shape {
public:
  %extend {
    void set_points(const Vector3Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_points", points);
    }
  }
  %extend {
    Vector3Array get_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_points");
    }
  }
  ConvexPolygonShape();

};
