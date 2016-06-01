/* mSoundRoomParams.i */
%module mSoundRoomParams


%typemap(csbody_derived) SoundRoomParams %{

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

%typemap(cscode) SoundRoomParams %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SoundRoomParams %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SoundRoomParams;

class SoundRoomParams : public Node {
public:
  %extend {
    void set_param(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_param", param, value);
    }
  }
  %extend {
    float get_param(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_param", param);
    }
  }
  %extend {
    void set_reverb_mode(int reverb_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_reverb_mode", reverb_mode);
    }
  }
  %extend {
    int get_reverb_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_reverb_mode");
    }
  }
  %extend {
    void set_force_params_to_all_sources(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_force_params_to_all_sources", enabled);
    }
  }
  %extend {
    bool is_forcing_params_to_all_sources() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_forcing_params_to_all_sources");
    }
  }
  SoundRoomParams();

};
