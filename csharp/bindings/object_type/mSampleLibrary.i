/* mSampleLibrary.i */
%module mSampleLibrary

%typemap(ctype, out="SampleLibrary*") Ref<SampleLibrary> "SampleLibrary*"
%typemap(out, null="NULL") Ref<SampleLibrary> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SampleLibrary> "SampleLibrary.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SampleLibrary> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SampleLibrary> "SampleLibrary"
%typemap(csout, excode=SWIGEXCODE) Ref<SampleLibrary> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SampleLibrary ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SampleLibrary;$excode
    return ret;
}

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
  %extend {
    void add_sample(const String& name, Ref<Sample> sample) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_sample", name, sample);
    }
  }
  %extend {
    Ref<Sample> get_sample(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_sample", name).operator Object *()->cast_to<Sample>();
    }
  }
  %extend {
    bool has_sample(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_sample", name);
    }
  }
  %extend {
    void remove_sample(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_sample", name);
    }
  }
  %extend {
    void sample_set_volume_db(const String& name, float db) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_volume_db", name, db);
    }
  }
  %extend {
    float sample_get_volume_db(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_volume_db", name);
    }
  }
  %extend {
    void sample_set_pitch_scale(const String& name, float pitch) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("sample_set_pitch_scale", name, pitch);
    }
  }
  %extend {
    float sample_get_pitch_scale(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("sample_get_pitch_scale", name);
    }
  }
  SampleLibrary();
  %extend {
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
