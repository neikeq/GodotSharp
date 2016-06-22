/* mGDFunctionState.i */
%module mGDFunctionState

%nodefaultctor GDFunctionState;
%typemap(ctype, out="GDFunctionState*") Ref<GDFunctionState> "GDFunctionState*"
%typemap(out, null="NULL") Ref<GDFunctionState> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<GDFunctionState> "GDFunctionState.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<GDFunctionState> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<GDFunctionState> "GDFunctionState"
%typemap(csout, excode=SWIGEXCODE) Ref<GDFunctionState> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    GDFunctionState ret = InternalHelpers.UnmanagedGetManaged(cPtr) as GDFunctionState;$excode
    return ret;
}

template<class GDFunctionState> class Ref;%template() Ref<GDFunctionState>;
%feature("novaluewrapper") Ref<GDFunctionState>;


%typemap(csbody_derived) GDFunctionState %{

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

%typemap(cscode) GDFunctionState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) GDFunctionState %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GDFunctionState;

class GDFunctionState : public Reference {
public:
  %extend {
    Variant resume(const Variant& arg_ = Variant()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resume", arg_);
    }
  }
  %extend {
    bool is_valid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_valid");
    }
  }
  %extend {
    ~GDFunctionState() {
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
