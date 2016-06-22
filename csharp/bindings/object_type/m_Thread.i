/* m_Thread.i */
%module m_Thread

%rename(Thread) _Thread;
%typemap(ctype, out="_Thread*") Ref<_Thread> "_Thread*"
%typemap(out, null="NULL") Ref<_Thread> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<_Thread> "_Thread.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Thread> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Thread> "_Thread"
%typemap(csout, excode=SWIGEXCODE) Ref<_Thread> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Thread ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Thread;$excode
    return ret;
}

template<class _Thread> class Ref;%template() Ref<_Thread>;
%feature("novaluewrapper") Ref<_Thread>;


%typemap(csbody_derived) _Thread %{
  public static readonly int PRIORITY_LOW = 0;
  public static readonly int PRIORITY_NORMAL = 1;
  public static readonly int PRIORITY_HIGH = 2;

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

%typemap(cscode) _Thread %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Thread %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _Thread;

class _Thread : public Reference {
public:
  %extend {
    int start(Object* instance, const String& method, const Variant& userdata = Variant(), int priority = 1) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("start", instance, method, userdata, priority);
    }
  }
  %extend {
    String get_id() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_id");
    }
  }
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    Variant wait_to_finish() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait_to_finish");
    }
  }
  _Thread();
  %extend {
    ~_Thread() {
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
