/* mPath2D.i */
%module mPath2D


%typemap(csbody_derived) Path2D %{

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

%typemap(cscode) Path2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Path2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Path2D;

class Path2D : public Node2D {
public:
  %extend {
    void set_curve(Ref<Curve2D> curve) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_curve", curve);
    }
  }
  %extend {
    Ref<Curve2D> get_curve() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_curve").operator Object *()->cast_to<Curve2D>();
    }
  }
  Path2D();

};
