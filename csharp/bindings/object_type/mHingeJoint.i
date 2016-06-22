/* mHingeJoint.i */
%module mHingeJoint

%typemap(out) HingeJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HingeJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) HingeJoint %{
  public static readonly int PARAM_BIAS = 0;
  public static readonly int PARAM_LIMIT_UPPER = 1;
  public static readonly int PARAM_LIMIT_LOWER = 2;
  public static readonly int PARAM_LIMIT_BIAS = 3;
  public static readonly int PARAM_LIMIT_SOFTNESS = 4;
  public static readonly int PARAM_LIMIT_RELAXATION = 5;
  public static readonly int PARAM_MOTOR_TARGET_VELOCITY = 6;
  public static readonly int PARAM_MOTOR_MAX_IMPULSE = 7;
  public static readonly int PARAM_MAX = 8;
  public static readonly int FLAG_USE_LIMIT = 0;
  public static readonly int FLAG_ENABLE_MOTOR = 1;
  public static readonly int FLAG_MAX = 2;

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

%typemap(cscode) HingeJoint %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) HingeJoint %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor HingeJoint;

class HingeJoint : public Joint {
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
    void set_flag(int flag, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag", flag, enabled);
    }
  }
  %extend {
    bool get_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag", flag);
    }
  }
  HingeJoint();

};
