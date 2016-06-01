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
    }$excode
  }
%}

%nodefaultdtor Generic6DOFJoint;

class Generic6DOFJoint : public Joint {
public:
  %extend {
    void set_param_x(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_param_x", param, value);
    }
  }
  %extend {
    float get_param_x(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_param_x", param);
    }
  }
  %extend {
    void set_param_y(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_param_y", param, value);
    }
  }
  %extend {
    float get_param_y(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_param_y", param);
    }
  }
  %extend {
    void set_param_z(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_param_z", param, value);
    }
  }
  %extend {
    float get_param_z(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_param_z", param);
    }
  }
  %extend {
    void set_flag_x(int flag, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag_x", flag, value);
    }
  }
  %extend {
    bool get_flag_x(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag_x", flag);
    }
  }
  %extend {
    void set_flag_y(int flag, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag_y", flag, value);
    }
  }
  %extend {
    bool get_flag_y(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag_y", flag);
    }
  }
  %extend {
    void set_flag_z(int flag, bool value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag_z", flag, value);
    }
  }
  %extend {
    bool get_flag_z(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag_z", flag);
    }
  }
  Generic6DOFJoint();

};
