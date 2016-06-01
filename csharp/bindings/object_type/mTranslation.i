/* mTranslation.i */
%module mTranslation


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
    }$excode
  }
%}

%nodefaultdtor Translation;

class Translation : public Resource {
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
    void add_message(const String& src_message, const String& xlated_message) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_message", src_message, xlated_message);
    }
  }
  %extend {
    String get_message(const String& src_message) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_message", src_message);
    }
  }
  %extend {
    void erase_message(const String& src_message) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_message", src_message);
    }
  }
  %extend {
    StringArray get_message_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_message_list");
    }
  }
  %extend {
    int get_message_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_message_count");
    }
  }
  Translation();

};
