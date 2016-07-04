/* mGeneric6DOFJoint.i */
%module mGeneric6DOFJoint


%typemap(csbody_derived) Generic6DOFJoint %{
  public static readonly int PARAM_LINEAR_LOWER_LIMIT = 0;
  public static readonly int PARAM_LINEAR_UPPER_LIMIT = 1;
  public static readonly int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
  public static readonly int PARAM_LINEAR_RESTITUTION = 3;
  public static readonly int PARAM_LINEAR_DAMPING = 4;
  public static readonly int PARAM_ANGULAR_LOWER_LIMIT = 5;
  public static readonly int PARAM_ANGULAR_UPPER_LIMIT = 6;
  public static readonly int PARAM_ANGULAR_LIMIT_SOFTNESS = 7;
  public static readonly int PARAM_ANGULAR_DAMPING = 8;
  public static readonly int PARAM_ANGULAR_RESTITUTION = 9;
  public static readonly int PARAM_ANGULAR_FORCE_LIMIT = 10;
  public static readonly int PARAM_ANGULAR_ERP = 11;
  public static readonly int PARAM_ANGULAR_MOTOR_TARGET_VELOCITY = 12;
  public static readonly int PARAM_ANGULAR_MOTOR_FORCE_LIMIT = 13;
  public static readonly int PARAM_MAX = 14;
  public static readonly int FLAG_ENABLE_LINEAR_LIMIT = 0;
  public static readonly int FLAG_ENABLE_ANGULAR_LIMIT = 1;
  public static readonly int FLAG_ENABLE_MOTOR = 2;
  public static readonly int FLAG_MAX = 3;

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

%typemap(cscode) Generic6DOFJoint %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Generic6DOFJoint %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Generic6DOFJoint;

class Generic6DOFJoint : public Joint {
public:
  Generic6DOFJoint();

%extend {

void set_param_x(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_param_x");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param_x(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_param_x");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_param_y(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_param_y");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param_y(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_param_y");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_param_z(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_param_z");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param_z(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_param_z");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_flag_x(int flag, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_flag_x");
  const void* __args[2] = { &flag, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag_x(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_flag_x");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_flag_y(int flag, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_flag_y");
  const void* __args[2] = { &flag, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag_y(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_flag_y");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_flag_z(int flag, bool value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "set_flag_z");
  const void* __args[2] = { &flag, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_flag_z(int flag) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Generic6DOFJoint", "get_flag_z");
  const void* __args[1] = { &flag };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
