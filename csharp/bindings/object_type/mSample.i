/* mSample.i */
%module mSample

template<class Sample> class Ref;%template() Ref<Sample>;
%feature("novaluewrapper") Ref<Sample>;


%typemap(csbody_derived) Sample %{
  public static readonly int FORMAT_PCM8 = 0;
  public static readonly int FORMAT_PCM16 = 1;
  public static readonly int FORMAT_IMA_ADPCM = 2;
  public static readonly int LOOP_NONE = 0;
  public static readonly int LOOP_FORWARD = 1;
  public static readonly int LOOP_PING_PONG = 2;

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

%typemap(cscode) Sample %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Sample %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Sample;

class Sample : public Resource {
public:
  Sample();

%extend {

void create(int format, bool stereo, int length) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "create");
  const void* __args[3] = { &format, &stereo, &length };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_format() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_format");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_stereo() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "is_stereo");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_length() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_length");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_data(const RawArray& data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "set_data");
  const void* __args[1] = { &data };
  __method_bind->ptrcall($self, __args, NULL);
}

RawArray get_data() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_data");
  RawArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_mix_rate(int hz) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "set_mix_rate");
  const void* __args[1] = { &hz };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_mix_rate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_mix_rate");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop_format(int format) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "set_loop_format");
  const void* __args[1] = { &format };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_loop_format() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_loop_format");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop_begin(int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "set_loop_begin");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_loop_begin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_loop_begin");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_loop_end(int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "set_loop_end");
  const void* __args[1] = { &pos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_loop_end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sample", "get_loop_end");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~Sample() {
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
