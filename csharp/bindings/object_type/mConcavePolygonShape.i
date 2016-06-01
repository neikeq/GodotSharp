/* mConcavePolygonShape.i */
%module mConcavePolygonShape


%typemap(csbody_derived) ConcavePolygonShape %{

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

%typemap(cscode) ConcavePolygonShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConcavePolygonShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConcavePolygonShape;

class ConcavePolygonShape : public Shape {
public:
  %extend {
    void set_faces(const Vector3Array& faces) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_faces", faces);
    }
  }
  %extend {
    Vector3Array get_faces() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_faces");
    }
  }
  ConcavePolygonShape();

};
