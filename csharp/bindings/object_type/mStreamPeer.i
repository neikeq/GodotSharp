/* mStreamPeer.i */
%module mStreamPeer

%nodefaultctor StreamPeer;
%typemap(ctype, out="StreamPeer*") Ref<StreamPeer> "StreamPeer*"
%typemap(out, null="NULL") Ref<StreamPeer> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<StreamPeer> "StreamPeer.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeer> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeer> "StreamPeer"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeer> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeer ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeer;$excode
    return ret;
}

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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("put_data", data);
    }
  }
  %extend {
    Array put_partial_data(const RawArray& data) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("put_partial_data", data);
    }
  }
  %extend {
    Array get_data(int bytes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_data", bytes);
    }
  }
  %extend {
    Array get_partial_data(int bytes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_partial_data", bytes);
    }
  }
  %extend {
    int get_available_bytes() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_available_bytes");
    }
  }
  %extend {
    void set_big_endian(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_big_endian", enable);
    }
  }
  %extend {
    bool is_big_endian_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_big_endian_enabled");
    }
  }
  %extend {
    void put_8(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_8", val);
    }
  }
  %extend {
    void put_u8(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_u8", val);
    }
  }
  %extend {
    void put_16(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_16", val);
    }
  }
  %extend {
    void put_u16(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_u16", val);
    }
  }
  %extend {
    void put_32(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_32", val);
    }
  }
  %extend {
    void put_u32(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_u32", val);
    }
  }
  %extend {
    void put_64(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_64", val);
    }
  }
  %extend {
    void put_u64(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_u64", val);
    }
  }
  %extend {
    void put_float(float val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_float", val);
    }
  }
  %extend {
    void put_double(float val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_double", val);
    }
  }
  %extend {
    void put_utf8_string(const String& val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_utf8_string", val);
    }
  }
  %extend {
    void put_var(const Variant& val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("put_var", val);
    }
  }
  %extend {
    int get_8() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_8");
    }
  }
  %extend {
    int get_u8() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_u8");
    }
  }
  %extend {
    int get_16() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_16");
    }
  }
  %extend {
    int get_u16() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_u16");
    }
  }
  %extend {
    int get_32() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_32");
    }
  }
  %extend {
    int get_u32() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_u32");
    }
  }
  %extend {
    int get_64() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_64");
    }
  }
  %extend {
    int get_u64() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_u64");
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
    String get_string(int bytes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_string", bytes);
    }
  }
  %extend {
    String get_utf8_string(int bytes) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_utf8_string", bytes);
    }
  }
  %extend {
    Variant get_var() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_var");
    }
  }
  %extend {
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
