/* mConvexPolygonShape.i */
%module mConvexPolygonShape

%typemap(ctype, out="ConvexPolygonShape*") Ref<ConvexPolygonShape> "ConvexPolygonShape*"
%typemap(out, null="NULL") Ref<ConvexPolygonShape> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ConvexPolygonShape> "ConvexPolygonShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConvexPolygonShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConvexPolygonShape> "ConvexPolygonShape"
%typemap(csout, excode=SWIGEXCODE) Ref<ConvexPolygonShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConvexPolygonShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConvexPolygonShape;$excode
    return ret;
}

template<class ConvexPolygonShape> class Ref;%template() Ref<ConvexPolygonShape>;
%feature("novaluewrapper") Ref<ConvexPolygonShape>;


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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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
  %extend {
    ~ConvexPolygonShape() {
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
