/* m_Thread.i */
%module m_Thread

%rename(Thread) _Thread;
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
  _Thread();

%extend {

int start(Object* instance, const String& method, const Variant& userdata = Variant(), int priority = 1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Thread", "start");
  const void* __args[4] = { instance, &method, &userdata, &priority };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_id() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Thread", "get_id");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_active() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Thread", "is_active");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Variant wait_to_finish() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Thread", "wait_to_finish");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

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
