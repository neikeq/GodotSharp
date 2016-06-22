/* m_Semaphore.i */
%module m_Semaphore

%rename(Semaphore) _Semaphore;
%typemap(ctype, out="_Semaphore*") Ref<_Semaphore> "_Semaphore*"
%typemap(out, null="NULL") Ref<_Semaphore> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<_Semaphore> "_Semaphore.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Semaphore> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Semaphore> "_Semaphore"
%typemap(csout, excode=SWIGEXCODE) Ref<_Semaphore> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Semaphore ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Semaphore;$excode
    return ret;
}

template<class _Semaphore> class Ref;%template() Ref<_Semaphore>;
%feature("novaluewrapper") Ref<_Semaphore>;


%typemap(csbody_derived) _Semaphore %{

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

%typemap(cscode) _Semaphore %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Semaphore %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _Semaphore;

class _Semaphore : public Reference {
public:
  %extend {
    int wait() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait");
    }
  }
  %extend {
    int post() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("post");
    }
  }
  _Semaphore();
  %extend {
    ~_Semaphore() {
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
