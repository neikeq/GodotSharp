/* m_File.i */
%module m_File

%rename(File) _File;
%typemap(ctype, out="_File*") Ref<_File> "_File*"
%typemap(out, null="NULL") Ref<_File> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<_File> "_File.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_File> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_File> "_File"
%typemap(csout, excode=SWIGEXCODE) Ref<_File> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _File ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _File;$excode
    return ret;
}

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
  %extend {
    int open_encrypted(const String& path, int mode_flags, const RawArray& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open_encrypted", path, mode_flags, key);
    }
  }
  %extend {
    int open_encrypted_with_pass(const String& path, int mode_flags, const String& pass) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open_encrypted_with_pass", path, mode_flags, pass);
    }
  }
  %extend {
    int open(const String& path, int flags) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open", path, flags);
    }
  }
  %extend {
    void close() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("close");
    }
  }
  %extend {
    bool is_open() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_open");
    }
  }
  %extend {
    void seek(int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("seek", pos);
    }
  }
  %extend {
    void seek_end(int pos = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("seek_end", pos);
    }
  }
  %extend {
    int get_pos() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pos");
    }
  }
  %extend {
    int get_len() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_len");
    }
  }
  %extend {
    bool eof_reached() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("eof_reached");
    }
  }
  %extend {
    int get_8() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_8");
    }
  }
  %extend {
    int get_16() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_16");
    }
  }
  %extend {
    int get_32() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_32");
    }
  }
  %extend {
    int get_64() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_64");
    }
  }
  %extend {
    float get_float() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_float");
    }
  }
  %extend {
    float get_double() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_double");
    }
  }
  %extend {
    float get_real() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_real");
    }
  }
  %extend {
    RawArray get_buffer(int len) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_buffer", len);
    }
  }
  %extend {
    String get_line() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line");
    }
  }
  %extend {
    String get_as_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_as_text");
    }
  }
  %extend {
    String get_md5(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_md5", path);
    }
  }
  %extend {
    String get_sha256(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sha256", path);
    }
  }
  %extend {
    bool get_endian_swap() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_endian_swap");
    }
  }
  %extend {
    void set_endian_swap(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_endian_swap", enable);
    }
  }
  %extend {
    int get_error() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_error");
    }
  }
  %extend {
    void get_var() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_var");
    }
  }
  %extend {
    StringArray get_csv_line(const String& delim = ",") {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_csv_line", delim);
    }
  }
  %extend {
    void store_8(int value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_8", value);
    }
  }
  %extend {
    void store_16(int value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_16", value);
    }
  }
  %extend {
    void store_32(int value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_32", value);
    }
  }
  %extend {
    void store_64(int value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_64", value);
    }
  }
  %extend {
    void store_float(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_float", value);
    }
  }
  %extend {
    void store_double(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_double", value);
    }
  }
  %extend {
    void store_real(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_real", value);
    }
  }
  %extend {
    void store_buffer(const RawArray& buffer) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_buffer", buffer);
    }
  }
  %extend {
    void store_line(const String& line) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_line", line);
    }
  }
  %extend {
    void store_string(const String& string) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_string", string);
    }
  }
  %extend {
    void store_var(const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_var", value);
    }
  }
  %extend {
    void store_pascal_string(const String& string) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("store_pascal_string", string);
    }
  }
  %extend {
    String get_pascal_string() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_pascal_string");
    }
  }
  %extend {
    bool file_exists(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("file_exists", path);
    }
  }
  _File();
  %extend {
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
