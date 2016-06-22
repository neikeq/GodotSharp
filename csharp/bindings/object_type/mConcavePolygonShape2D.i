/* mConcavePolygonShape2D.i */
%module mConcavePolygonShape2D

%typemap(ctype, out="ConcavePolygonShape2D*") Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D*"
%typemap(out, null="NULL") Ref<ConcavePolygonShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConcavePolygonShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<ConcavePolygonShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConcavePolygonShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConcavePolygonShape2D;$excode
    return ret;
}

template<class ConcavePolygonShape2D> class Ref;%template() Ref<ConcavePolygonShape2D>;
%feature("novaluewrapper") Ref<ConcavePolygonShape2D>;


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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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
  %extend {
    ~ConcavePolygonShape2D() {
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
