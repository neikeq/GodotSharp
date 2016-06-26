/* mStreamPeer.i */
%module mStreamPeer

%nodefaultctor StreamPeer;
template<class StreamPeer> class Ref;%template() Ref<StreamPeer>;
%feature("novaluewrapper") Ref<StreamPeer>;


%typemap(csbody_derived) StreamPeer %{

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

%typemap(cscode) StreamPeer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) StreamPeer %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StreamPeer;

class StreamPeer : public Reference {
public:

%extend {

int put_data(const RawArray& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_data");
  const void* __args[1] = { &data };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array put_partial_data(const RawArray& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_partial_data");
  const void* __args[1] = { &data };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_data(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_data");
  const void* __args[1] = { &bytes };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_partial_data(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_partial_data");
  const void* __args[1] = { &bytes };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_available_bytes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_available_bytes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_big_endian(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "set_big_endian");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_big_endian_enabled() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "is_big_endian_enabled");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void put_8(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_8");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_u8(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_u8");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_16(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_16");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_u16(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_u16");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_32(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_32");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_u32(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_u32");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_64(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_64");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_u64(int val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_u64");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_float(float val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_float");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_double(float val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_double");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_utf8_string(const String& val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_utf8_string");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

void put_var(const Variant& val) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "put_var");
  const void* __args[1] = { &val };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_8() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_8");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_u8() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_u8");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_16() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_16");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_u16() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_u16");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_32() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_32");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_u32() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_u32");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_64() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_64");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_u64() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_u64");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_float() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_float");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_double() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_double");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_string(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_string");
  const void* __args[1] = { &bytes };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_utf8_string(int bytes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_utf8_string");
  const void* __args[1] = { &bytes };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Variant get_var() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StreamPeer", "get_var");
  Variant ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~StreamPeer() {
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
