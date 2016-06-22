/* mSample.i */
%module mSample

%typemap(ctype, out="Sample*") Ref<Sample> "Sample*"
%typemap(out, null="NULL") Ref<Sample> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Sample> "Sample.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Sample> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Sample> "Sample"
%typemap(csout, excode=SWIGEXCODE) Ref<Sample> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Sample ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Sample;$excode
    return ret;
}

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
  %extend {
    void create(int format, bool stereo, int length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create", format, stereo, length);
    }
  }
  %extend {
    int get_format() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_format");
    }
  }
  %extend {
    bool is_stereo() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_stereo");
    }
  }
  %extend {
    int get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  %extend {
    void set_data(const RawArray& data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_data", data);
    }
  }
  %extend {
    RawArray get_data() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_data");
    }
  }
  %extend {
    void set_mix_rate(int hz) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mix_rate", hz);
    }
  }
  %extend {
    int get_mix_rate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mix_rate");
    }
  }
  %extend {
    void set_loop_format(int format) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop_format", format);
    }
  }
  %extend {
    int get_loop_format() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_format");
    }
  }
  %extend {
    void set_loop_begin(int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop_begin", pos);
    }
  }
  %extend {
    int get_loop_begin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_begin");
    }
  }
  %extend {
    void set_loop_end(int pos) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_loop_end", pos);
    }
  }
  %extend {
    int get_loop_end() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_loop_end");
    }
  }
  Sample();
  %extend {
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
