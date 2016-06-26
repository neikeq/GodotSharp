/* m_File.i */
%module m_File

%rename(File) _File;
template<class _File> class Ref;%template() Ref<_File>;
%feature("novaluewrapper") Ref<_File>;


%typemap(csbody_derived) _File %{
  public static readonly int READ = 1;
  public static readonly int WRITE = 2;
  public static readonly int READ_WRITE = 3;
  public static readonly int WRITE_READ = 7;

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

%typemap(cscode) _File %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _File %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _File;

class _File : public Reference {
public:
  _File();

%extend {

int open_encrypted(const String& path, int mode_flags, const RawArray& key) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "open_encrypted");
  const void* __args[3] = { &path, &mode_flags, &key };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int open_encrypted_with_pass(const String& path, int mode_flags, const String& pass) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "open_encrypted_with_pass");
  const void* __args[3] = { &path, &mode_flags, &pass };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int open(const String& path, int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "open");
  const void* __args[2] = { &path, &flags };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void close() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "close");
  __method_bind->ptrcall($self, NULL, NULL);
}

bool is_open() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "is_open");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void seek(int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "seek");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

void seek_end(int pos = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "seek_end");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_pos() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_pos");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_len() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_len");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool eof_reached() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "eof_reached");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_8() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_8");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_16() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_16");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_32() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_32");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_64() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_64");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_float() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_float");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_double() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_double");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_real() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_real");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RawArray get_buffer(int len) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_buffer");
  const void* __args[1] = { &len };
  RawArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_line() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_line");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_as_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_as_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_md5(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_md5");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_sha256(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_sha256");
  const void* __args[1] = { &path };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool get_endian_swap() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_endian_swap");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_endian_swap(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "set_endian_swap");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_error() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_error");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void get_var() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_var");
  __method_bind->ptrcall($self, NULL, NULL);
}

StringArray get_csv_line(const String& delim = ",") {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_csv_line");
  const void* __args[1] = { &delim };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void store_8(int value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_8");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_16(int value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_16");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_32(int value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_32");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_64(int value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_64");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_float(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_float");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_double(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_double");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_real(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_real");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_buffer(const RawArray& buffer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_buffer");
  const void* __args[1] = { &buffer };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_line(const String& line) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_line");
  const void* __args[1] = { &line };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_string(const String& string) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_string");
  const void* __args[1] = { &string };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_var(const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_var");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void store_pascal_string(const String& string) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "store_pascal_string");
  const void* __args[1] = { &string };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_pascal_string() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "get_pascal_string");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool file_exists(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_File", "file_exists");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~_File() {
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
