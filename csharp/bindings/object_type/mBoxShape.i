/* mBoxShape.i */
%module mBoxShape


%typemap(csbody_derived) BoxShape %{

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

%typemap(cscode) BoxShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BoxShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BoxShape;

class BoxShape : public Shape {
public:
  %extend {
    void set_extents(const Vector3& extents) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_extents", extents);
    }
  }
  %extend {
    Vector3 get_extents() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_extents");
    }
  }
  BoxShape();

};
