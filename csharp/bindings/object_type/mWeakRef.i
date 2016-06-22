/* mWeakRef.i */
%module mWeakRef

%typemap(ctype, out="WeakRef*") Ref<WeakRef> "WeakRef*"
%typemap(out, null="NULL") Ref<WeakRef> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<WeakRef> "WeakRef.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<WeakRef> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<WeakRef> "WeakRef"
%typemap(csout, excode=SWIGEXCODE) Ref<WeakRef> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    WeakRef ret = InternalHelpers.UnmanagedGetManaged(cPtr) as WeakRef;$excode
    return ret;
}

template<class WeakRef> class Ref;%template() Ref<WeakRef>;
%feature("novaluewrapper") Ref<WeakRef>;


%typemap(csbody_derived) WeakRef %{

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

%typemap(cscode) WeakRef %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) WeakRef %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor WeakRef;

class WeakRef : public Reference {
public:
  %extend {
    Object* get_ref() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ref").operator Object *();
    }
  }
  WeakRef();
  %extend {
    ~WeakRef() {
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
