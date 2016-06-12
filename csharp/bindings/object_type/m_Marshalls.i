/* m_Marshalls.i */
%module m_Marshalls

%rename(Marshalls) _Marshalls;
%csmethodmodifiers _Marshalls::_Marshalls "private"
%csmethodmodifiers _Marshalls::SingletonGetInstance "private"
%nodefaultctor _Marshalls;

%typemap(csbody_derived) _Marshalls %{
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

%typemap(cscode) _Marshalls %{
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

%typemap(csconstruct, excode=SWIGEXCODE) _Marshalls %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _Marshalls;

class _Marshalls : public Reference {
public:
  %extend {
    String variant_to_base64(const Variant& variant) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("variant_to_base64", variant);
    }
  }
  %extend {
    Variant base64_to_variant(const String& base64_str) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("base64_to_variant", base64_str);
    }
  }
  %extend {
    String raw_to_base64(const RawArray& array) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("raw_to_base64", array);
    }
  }
  %extend {
    RawArray base64_to_raw(const String& base64_str) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("base64_to_raw", base64_str);
    }
  }
  %extend {
    String utf8_to_base64(const String& utf8_str) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("utf8_to_base64", utf8_str);
    }
  }
  %extend {
    String base64_to_utf8(const String& base64_str) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("base64_to_utf8", base64_str);
    }
  }
  %extend {
    static _Marshalls* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Marshalls")->cast_to<_Marshalls>(); }
  }

};
