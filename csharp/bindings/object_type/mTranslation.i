/* mTranslation.i */
%module mTranslation

template<class Translation> class Ref;%template() Ref<Translation>;
%feature("novaluewrapper") Ref<Translation>;


%typemap(csbody_derived) Translation %{

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

%typemap(cscode) Translation %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Translation %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Translation;

class Translation : public Resource {
public:
  Translation();

%extend {

void set_locale(const String& locale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "set_locale");
  const void* __args[1] = { &locale };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_locale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "get_locale");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_message(const String& src_message, const String& xlated_message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "add_message");
  const void* __args[2] = { &src_message, &xlated_message };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_message(const String& src_message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "get_message");
  const void* __args[1] = { &src_message };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void erase_message(const String& src_message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "erase_message");
  const void* __args[1] = { &src_message };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_message_list() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "get_message_list");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_message_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Translation", "get_message_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~Translation() {
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
