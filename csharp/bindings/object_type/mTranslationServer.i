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
    }$excode
  }
%}

%nodefaultdtor TranslationServer;

class TranslationServer : public Object {
public:
  %extend {
    void set_locale(const String& locale) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_locale", locale);
    }
  }
  %extend {
    String get_locale() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_locale");
    }
  }
  %extend {
    String translate(const String& message) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("translate", message);
    }
  }
  %extend {
    void add_translation(Ref<Translation> translation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_translation", translation);
    }
  }
  %extend {
    void remove_translation(Ref<Translation> translation) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_translation", translation);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    static TranslationServer* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("TranslationServer")->cast_to<TranslationServer>(); }
  }

};
