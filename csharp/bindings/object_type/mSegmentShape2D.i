/* mSegmentShape2D.i */
%module mSegmentShape2D

%typemap(ctype, out="SegmentShape2D*") Ref<SegmentShape2D> "SegmentShape2D*"
%typemap(out, null="NULL") Ref<SegmentShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SegmentShape2D> "SegmentShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SegmentShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SegmentShape2D> "SegmentShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<SegmentShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SegmentShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SegmentShape2D;$excode
    return ret;
}

template<class SegmentShape2D> class Ref;%template() Ref<SegmentShape2D>;
%feature("novaluewrapper") Ref<SegmentShape2D>;


%typemap(csbody_derived) SegmentShape2D %{

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

%typemap(cscode) SegmentShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SegmentShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SegmentShape2D;

class SegmentShape2D : public Shape2D {
public:
  %extend {
    void set_a(const Vector2& a) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_a", a);
    }
  }
  %extend {
    Vector2 get_a() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_a");
    }
  }
  %extend {
    void set_b(const Vector2& b) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_b", b);
    }
  }
  %extend {
    Vector2 get_b() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_b");
    }
  }
  SegmentShape2D();
  %extend {
    ~SegmentShape2D() {
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
