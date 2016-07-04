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
  SoundRoomParams();

%extend {

void set_param(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "set_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "get_param");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_reverb_mode(int reverb_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "set_reverb_mode");
  const void* __args[1] = { &reverb_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_reverb_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "get_reverb_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_force_params_to_all_sources(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "set_force_params_to_all_sources");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_forcing_params_to_all_sources() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SoundRoomParams", "is_forcing_params_to_all_sources");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
