/* mPlaneShape.i */
%module mPlaneShape


%typemap(csbody_derived) PlaneShape %{

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

%typemap(cscode) PlaneShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PlaneShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor PlaneShape;

class PlaneShape : public Shape {
public:
  %extend {
    void set_plane(const Plane& plane) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_plane", plane);
    }
  }
  %extend {
    Plane get_plane() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_plane");
    }
  }
  PlaneShape();

};
