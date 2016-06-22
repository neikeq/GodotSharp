/* mSpatialGizmo.i */
%module mSpatialGizmo

%nodefaultctor SpatialGizmo;
%typemap(ctype, out="SpatialGizmo*") Ref<SpatialGizmo> "SpatialGizmo*"
%typemap(out, null="NULL") Ref<SpatialGizmo> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SpatialGizmo> "SpatialGizmo.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SpatialGizmo> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SpatialGizmo> "SpatialGizmo"
%typemap(csout, excode=SWIGEXCODE) Ref<SpatialGizmo> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SpatialGizmo ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SpatialGizmo;$excode
    return ret;
}

template<class SpatialGizmo> class Ref;%template() Ref<SpatialGizmo>;
%feature("novaluewrapper") Ref<SpatialGizmo>;


%typemap(csbody_derived) SpatialGizmo %{

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

%typemap(cscode) SpatialGizmo %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpatialGizmo %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpatialGizmo;

class SpatialGizmo : public Reference {
public:
  %extend {
    ~SpatialGizmo() {
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
