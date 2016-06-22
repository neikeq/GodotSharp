/* mPHashTranslation.i */
%module mPHashTranslation

%typemap(ctype, out="PHashTranslation*") Ref<PHashTranslation> "PHashTranslation*"
%typemap(out, null="NULL") Ref<PHashTranslation> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PHashTranslation> "PHashTranslation.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PHashTranslation> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PHashTranslation> "PHashTranslation"
%typemap(csout, excode=SWIGEXCODE) Ref<PHashTranslation> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PHashTranslation ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PHashTranslation;$excode
    return ret;
}

template<class PHashTranslation> class Ref;%template() Ref<PHashTranslation>;
%feature("novaluewrapper") Ref<PHashTranslation>;


%typemap(csbody_derived) PHashTranslation %{

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

%typemap(cscode) PHashTranslation %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PHashTranslation %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PHashTranslation;

class PHashTranslation : public Translation {
public:
  %extend {
    void generate(Ref<Translation> from) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("generate", from);
    }
  }
  PHashTranslation();
  %extend {
    ~PHashTranslation() {
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
