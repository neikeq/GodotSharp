/* mRectangleShape2D.i */
%module mRectangleShape2D

%typemap(ctype, out="RectangleShape2D*") Ref<RectangleShape2D> "RectangleShape2D*"
%typemap(out, null="NULL") Ref<RectangleShape2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<RectangleShape2D> "RectangleShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RectangleShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RectangleShape2D> "RectangleShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<RectangleShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RectangleShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RectangleShape2D;$excode
    return ret;
}

template<class RectangleShape2D> class Ref;%template() Ref<RectangleShape2D>;
%feature("novaluewrapper") Ref<RectangleShape2D>;


%typemap(csbody_derived) RectangleShape2D %{

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

%typemap(cscode) RectangleShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RectangleShape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RectangleShape2D;

class RectangleShape2D : public Shape2D {
public:
  %extend {
    void set_extents(const Vector2& extents) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_extents", extents);
    }
  }
  %extend {
    Vector2 get_extents() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_extents");
    }
  }
  RectangleShape2D();
  %extend {
    ~RectangleShape2D() {
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
