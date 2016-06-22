/* mEventStream.i */
%module mEventStream

%nodefaultctor EventStream;
%typemap(ctype, out="EventStream*") Ref<EventStream> "EventStream*"
%typemap(out, null="NULL") Ref<EventStream> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EventStream> "EventStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EventStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EventStream> "EventStream"
%typemap(csout, excode=SWIGEXCODE) Ref<EventStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EventStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EventStream;$excode
    return ret;
}

template<class EventStream> class Ref;%template() Ref<EventStream>;
%feature("novaluewrapper") Ref<EventStream>;


%typemap(csbody_derived) EventStream %{

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

%typemap(cscode) EventStream %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) EventStream %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EventStream;

class EventStream : public Resource {
public:
  %extend {
    ~EventStream() {
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
