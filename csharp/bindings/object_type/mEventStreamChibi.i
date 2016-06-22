/* mEventStreamChibi.i */
%module mEventStreamChibi

%typemap(ctype, out="EventStreamChibi*") Ref<EventStreamChibi> "EventStreamChibi*"
%typemap(out, null="NULL") Ref<EventStreamChibi> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EventStreamChibi> "EventStreamChibi.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EventStreamChibi> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EventStreamChibi> "EventStreamChibi"
%typemap(csout, excode=SWIGEXCODE) Ref<EventStreamChibi> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EventStreamChibi ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EventStreamChibi;$excode
    return ret;
}

template<class EventStreamChibi> class Ref;%template() Ref<EventStreamChibi>;
%feature("novaluewrapper") Ref<EventStreamChibi>;


%typemap(csbody_derived) EventStreamChibi %{

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

%typemap(cscode) EventStreamChibi %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EventStreamChibi %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EventStreamChibi;

class EventStreamChibi : public EventStream {
public:
  EventStreamChibi();
  %extend {
    ~EventStreamChibi() {
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
