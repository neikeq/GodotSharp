/* mHingeJoint.i */
%module mHingeJoint


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
  HingeJoint();

%extend {

void set_param(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HingeJoint", "set_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HingeJoint", "get_param");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_flag(int flag, bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HingeJoint", "set_flag");
  const void* __args[2] = { &flag, &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("HingeJoint", "get_flag");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
