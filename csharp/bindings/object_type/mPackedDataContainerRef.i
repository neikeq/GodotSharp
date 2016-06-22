/* mPackedDataContainerRef.i */
%module mPackedDataContainerRef

%nodefaultctor PackedDataContainerRef;
%typemap(ctype, out="PackedDataContainerRef*") Ref<PackedDataContainerRef> "PackedDataContainerRef*"
%typemap(out, null="NULL") Ref<PackedDataContainerRef> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PackedDataContainerRef> "PackedDataContainerRef.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedDataContainerRef> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedDataContainerRef> "PackedDataContainerRef"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedDataContainerRef> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedDataContainerRef ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedDataContainerRef;$excode
    return ret;
}

template<class PackedDataContainerRef> class Ref;%template() Ref<PackedDataContainerRef>;
%feature("novaluewrapper") Ref<PackedDataContainerRef>;


%typemap(csbody_derived) PackedDataContainerRef %{

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

%typemap(cscode) PackedDataContainerRef %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) PackedDataContainerRef %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PackedDataContainerRef;

class PackedDataContainerRef : public Reference {
public:
  %extend {
    int size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("size");
    }
  }
  %extend {
    ~PackedDataContainerRef() {
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
