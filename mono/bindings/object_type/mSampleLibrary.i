/* mSampleLibrary.i */
%module mSampleLibrary

template<class SampleLibrary> class Ref;%template() Ref<SampleLibrary>;
%feature("novaluewrapper") Ref<SampleLibrary>;


%typemap(csbody_derived) SampleLibrary %{

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

%typemap(cscode) SampleLibrary %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SampleLibrary %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SampleLibrary;

class SampleLibrary : public Resource {
public:
  SampleLibrary();

%extend {

void add_sample(const String& name, Sample* sample) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "add_sample");
  const void* __args[2] = { &name, sample };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Sample> get_sample(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "get_sample");
  const void* __args[1] = { &name };
  Ref<Sample> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_sample(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "has_sample");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_sample(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "remove_sample");
  const void* __args[1] = { &name };
  __method_bind->ptrcall($self, __args, NULL);
}

void sample_set_volume_db(const String& name, float db) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "sample_set_volume_db");
  const void* __args[2] = { &name, &db };
  __method_bind->ptrcall($self, __args, NULL);
}

float sample_get_volume_db(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "sample_get_volume_db");
  const void* __args[1] = { &name };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void sample_set_pitch_scale(const String& name, float pitch) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "sample_set_pitch_scale");
  const void* __args[2] = { &name, &pitch };
  __method_bind->ptrcall($self, __args, NULL);
}

float sample_get_pitch_scale(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SampleLibrary", "sample_get_pitch_scale");
  const void* __args[1] = { &name };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~SampleLibrary() {
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
