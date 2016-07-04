/* m_Marshalls.i */
%module m_Marshalls

%rename(Marshalls) _Marshalls;
%csmethodmodifiers _Marshalls::_Marshalls "private"
%csmethodmodifiers _Marshalls::SingletonGetInstance "private"
%nodefaultctor _Marshalls;
template<class _Marshalls> class Ref;%template() Ref<_Marshalls>;
%feature("novaluewrapper") Ref<_Marshalls>;


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
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "variant_to_base64");
  const void* __args[1] = { &variant };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant base64_to_variant(const String& base64_str) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "base64_to_variant");
  const void* __args[1] = { &base64_str };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String raw_to_base64(const RawArray& array) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "raw_to_base64");
  const void* __args[1] = { &array };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

RawArray base64_to_raw(const String& base64_str) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "base64_to_raw");
  const void* __args[1] = { &base64_str };
  RawArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String utf8_to_base64(const String& utf8_str) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "utf8_to_base64");
  const void* __args[1] = { &utf8_str };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String base64_to_utf8(const String& base64_str) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Marshalls", "base64_to_utf8");
  const void* __args[1] = { &base64_str };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

static _Marshalls* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Marshalls")->cast_to<_Marshalls>(); }

~_Marshalls() {
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
