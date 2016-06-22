/* mLineShape2D.i */
%module mLineShape2D

%typemap(ctype, out="LineShape2D*") Ref<LineShape2D> "LineShape2D*"
%typemap(out, null="NULL") Ref<LineShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<LineShape2D> "LineShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<LineShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<LineShape2D> "LineShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<LineShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    LineShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as LineShape2D;$excode
    return ret;
}

template<class LineShape2D> class Ref;%template() Ref<LineShape2D>;
%feature("novaluewrapper") Ref<LineShape2D>;


%typemap(csbody_derived) LineShape2D %{

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

%typemap(cscode) LineShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LineShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LineShape2D;

class LineShape2D : public Shape2D {
public:
  %extend {
    void set_normal(const Vector2& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_normal", normal);
    }
  }
  %extend {
    Vector2 get_normal() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_normal");
    }
  }
  %extend {
    void set_d(float d) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_d", d);
    }
  }
  %extend {
    float get_d() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_d");
    }
  }
  LineShape2D();
  %extend {
    ~LineShape2D() {
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
