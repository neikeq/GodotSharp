/* mReference.i */
%module mReference

%typemap(ctype, out="Reference*") Ref<Reference> "Reference*"
%typemap(out, null="NULL") Ref<Reference> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Reference> "Reference.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Reference> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Reference> "Reference"
%typemap(csout, excode=SWIGEXCODE) Ref<Reference> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Reference ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Reference;$excode
    return ret;
}

template<class Reference> class Ref;%template() Ref<Reference>;
%feature("novaluewrapper") Ref<Reference>;


%typemap(csbody_derived) Reference %{

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

%typemap(cscode) Reference %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Reference %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Reference;

class Reference : public Object {
public:
  %extend {
    bool init_ref() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("init_ref");
    }
  }
  %extend {
    void reference() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("reference");
    }
  }
  %extend {
    bool unreference() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("unreference");
    }
  }
  Reference();
  %extend {
    ~Reference() {
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
