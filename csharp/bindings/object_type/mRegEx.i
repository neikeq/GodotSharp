/* mRegEx.i */
%module mRegEx

template<class RegEx> class Ref;%template() Ref<RegEx>;
%feature("novaluewrapper") Ref<RegEx>;


%typemap(csbody_derived) RegEx %{

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

%typemap(cscode) RegEx %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RegEx %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RegEx;

class RegEx : public Reference {
public:
  RegEx();

%extend {

int compile(const String& pattern, int capture = 9) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "compile");
  const void* __args[2] = { &pattern, &capture };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int find(const String& text, int start = 0, int end = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "find");
  const void* __args[3] = { &text, &start, &end };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_valid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "is_valid");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_capture_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "get_capture_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_capture(int capture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "get_capture");
  const void* __args[1] = { &capture };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_capture_start(int capture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "get_capture_start");
  const void* __args[1] = { &capture };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_captures() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RegEx", "get_captures");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~RegEx() {
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
