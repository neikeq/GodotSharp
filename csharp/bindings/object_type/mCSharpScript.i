/* mCSharpScript.i */
%module mCSharpScript

%typemap(ctype, out="CSharpScript*") Ref<CSharpScript> "CSharpScript*"
%typemap(out, null="NULL") Ref<CSharpScript> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<CSharpScript> "CSharpScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CSharpScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CSharpScript> "CSharpScript"
%typemap(csout, excode=SWIGEXCODE) Ref<CSharpScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CSharpScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CSharpScript;$excode
    return ret;
}

template<class CSharpScript> class Ref;%template() Ref<CSharpScript>;
%feature("novaluewrapper") Ref<CSharpScript>;


%typemap(csbody_derived) CSharpScript %{

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

%typemap(cscode) CSharpScript %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CSharpScript %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CSharpScript;

class CSharpScript : public Script {
public:
  CSharpScript();
  %extend {
    ~CSharpScript() {
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
