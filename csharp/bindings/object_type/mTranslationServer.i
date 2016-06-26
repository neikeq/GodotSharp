/* mTranslationServer.i */
%module mTranslationServer

%csmethodmodifiers TranslationServer::TranslationServer "private"
%csmethodmodifiers TranslationServer::SingletonGetInstance "private"
%nodefaultctor TranslationServer;

%typemap(csbody_derived) TranslationServer %{
  private static $csclassname instance;

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

%typemap(cscode) TranslationServer %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) TranslationServer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TranslationServer;

class TranslationServer : public Object {
public:

%extend {

void set_locale(const String& locale) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "set_locale");
  const void* __args[1] = { &locale };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_locale() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "get_locale");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String translate(const String& message) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "translate");
  const void* __args[1] = { &message };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_translation(Translation* translation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "add_translation");
  const void* __args[1] = { translation };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_translation(Translation* translation) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "remove_translation");
  const void* __args[1] = { translation };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TranslationServer", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

static TranslationServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("TranslationServer")->cast_to<TranslationServer>(); }

}


};
