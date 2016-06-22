/* mShape.i */
%module mShape

%nodefaultctor Shape;
%typemap(ctype, out="Shape*") Ref<Shape> "Shape*"
%typemap(out, null="NULL") Ref<Shape> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Shape> "Shape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Shape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Shape> "Shape"
%typemap(csout, excode=SWIGEXCODE) Ref<Shape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Shape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Shape;$excode
    return ret;
}

template<class Shape> class Ref;%template() Ref<Shape>;
%feature("novaluewrapper") Ref<Shape>;


%typemap(csbody_derived) Shape %{

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

%typemap(cscode) Shape %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Shape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Shape;

class Shape : public Resource {
public:
  %extend {
    ~Shape() {
      if ($self->get_script_instance()) {
        CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
        if (cs_instance) {
          cs_instance->mono_object_disposed();
          return;
        }
      }
      if ($self->unreference()) {
        memdelete($self);
      }
    }
  }


};
