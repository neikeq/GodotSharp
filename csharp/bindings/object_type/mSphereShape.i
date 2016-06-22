/* mSphereShape.i */
%module mSphereShape

%typemap(ctype, out="SphereShape*") Ref<SphereShape> "SphereShape*"
%typemap(out, null="NULL") Ref<SphereShape> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SphereShape> "SphereShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SphereShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SphereShape> "SphereShape"
%typemap(csout, excode=SWIGEXCODE) Ref<SphereShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SphereShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SphereShape;$excode
    return ret;
}

template<class SphereShape> class Ref;%template() Ref<SphereShape>;
%feature("novaluewrapper") Ref<SphereShape>;


%typemap(csbody_derived) SphereShape %{

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

%typemap(cscode) SphereShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SphereShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SphereShape;

class SphereShape : public Shape {
public:
  %extend {
    void set_radius(float radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radius", radius);
    }
  }
  %extend {
    float get_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radius");
    }
  }
  SphereShape();
  %extend {
    ~SphereShape() {
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
