/* mStyleBoxEmpty.i */
%module mStyleBoxEmpty

%typemap(ctype, out="StyleBoxEmpty*") Ref<StyleBoxEmpty> "StyleBoxEmpty*"
%typemap(out, null="NULL") Ref<StyleBoxEmpty> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<StyleBoxEmpty> "StyleBoxEmpty.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxEmpty> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxEmpty> "StyleBoxEmpty"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxEmpty> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxEmpty ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxEmpty;$excode
    return ret;
}

template<class StyleBoxEmpty> class Ref;%template() Ref<StyleBoxEmpty>;
%feature("novaluewrapper") Ref<StyleBoxEmpty>;


%typemap(csbody_derived) StyleBoxEmpty %{

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

%typemap(cscode) StyleBoxEmpty %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxEmpty %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxEmpty;

class StyleBoxEmpty : public StyleBox {
public:
  StyleBoxEmpty();
  %extend {
    ~StyleBoxEmpty() {
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
