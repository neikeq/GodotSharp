/* mConvexPolygonShape2D.i */
%module mConvexPolygonShape2D

%typemap(ctype, out="ConvexPolygonShape2D*") Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D*"
%typemap(out, null="NULL") Ref<ConvexPolygonShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConvexPolygonShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<ConvexPolygonShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConvexPolygonShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConvexPolygonShape2D;$excode
    return ret;
}

template<class ConvexPolygonShape2D> class Ref;%template() Ref<ConvexPolygonShape2D>;
%feature("novaluewrapper") Ref<ConvexPolygonShape2D>;


%typemap(csbody_derived) ConvexPolygonShape2D %{

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

%typemap(cscode) ConvexPolygonShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ConvexPolygonShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ConvexPolygonShape2D;

class ConvexPolygonShape2D : public Shape2D {
public:
  %extend {
    void set_point_cloud(const Vector2Array& point_cloud) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_point_cloud", point_cloud);
    }
  }
  %extend {
    void set_points(const Vector2Array& points) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_points", points);
    }
  }
  %extend {
    Vector2Array get_points() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_points");
    }
  }
  ConvexPolygonShape2D();
  %extend {
    ~ConvexPolygonShape2D() {
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
