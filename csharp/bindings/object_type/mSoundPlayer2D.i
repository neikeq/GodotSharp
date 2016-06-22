/* mSoundPlayer2D.i */
%module mSoundPlayer2D

%nodefaultctor SoundPlayer2D;
%typemap(out) SoundPlayer2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SoundPlayer2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) SoundPlayer2D %{
  public static readonly int PARAM_VOLUME_DB = 0;
  public static readonly int PARAM_PITCH_SCALE = 1;
  public static readonly int PARAM_ATTENUATION_MIN_DISTANCE = 2;
  public static readonly int PARAM_ATTENUATION_MAX_DISTANCE = 3;
  public static readonly int PARAM_ATTENUATION_DISTANCE_EXP = 4;
  public static readonly int PARAM_MAX = 5;

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

%typemap(cscode) SoundPlayer2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SoundPlayer2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SoundPlayer2D;

class SoundPlayer2D : public Node2D {
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

};
