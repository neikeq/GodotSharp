/* mSliderJoint.i */
%module mSliderJoint


%typemap(csbody_derived) SliderJoint %{
  public static readonly int PARAM_LINEAR_LIMIT_UPPER = 0;
  public static readonly int PARAM_LINEAR_LIMIT_LOWER = 1;
  public static readonly int PARAM_LINEAR_LIMIT_SOFTNESS = 2;
  public static readonly int PARAM_LINEAR_LIMIT_RESTITUTION = 3;
  public static readonly int PARAM_LINEAR_LIMIT_DAMPING = 4;
  public static readonly int PARAM_LINEAR_MOTION_SOFTNESS = 5;
  public static readonly int PARAM_LINEAR_MOTION_RESTITUTION = 6;
  public static readonly int PARAM_LINEAR_MOTION_DAMPING = 7;
  public static readonly int PARAM_LINEAR_ORTHOGONAL_SOFTNESS = 8;
  public static readonly int PARAM_LINEAR_ORTHOGONAL_RESTITUTION = 9;
  public static readonly int PARAM_LINEAR_ORTHOGONAL_DAMPING = 10;
  public static readonly int PARAM_ANGULAR_LIMIT_UPPER = 11;
  public static readonly int PARAM_ANGULAR_LIMIT_LOWER = 12;
  public static readonly int PARAM_ANGULAR_LIMIT_SOFTNESS = 13;
  public static readonly int PARAM_ANGULAR_LIMIT_RESTITUTION = 14;
  public static readonly int PARAM_ANGULAR_LIMIT_DAMPING = 15;
  public static readonly int PARAM_ANGULAR_MOTION_SOFTNESS = 16;
  public static readonly int PARAM_ANGULAR_MOTION_RESTITUTION = 17;
  public static readonly int PARAM_ANGULAR_MOTION_DAMPING = 18;
  public static readonly int PARAM_ANGULAR_ORTHOGONAL_SOFTNESS = 19;
  public static readonly int PARAM_ANGULAR_ORTHOGONAL_RESTITUTION = 20;
  public static readonly int PARAM_ANGULAR_ORTHOGONAL_DAMPING = 21;
  public static readonly int PARAM_MAX = 22;

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

%typemap(cscode) SliderJoint %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SliderJoint %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SliderJoint;

class SliderJoint : public Joint {
public:
  SliderJoint();

%extend {

void set_param(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SliderJoint", "set_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SliderJoint", "get_param");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

}


};
