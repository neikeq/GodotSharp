/* mDirectionalLight.i */
%module mDirectionalLight


%typemap(csbody_derived) DirectionalLight %{
  public static readonly int SHADOW_ORTHOGONAL = 0;
  public static readonly int SHADOW_PERSPECTIVE = 1;
  public static readonly int SHADOW_PARALLEL_2_SPLITS = 2;
  public static readonly int SHADOW_PARALLEL_4_SPLITS = 3;
  public static readonly int SHADOW_PARAM_MAX_DISTANCE = 0;
  public static readonly int SHADOW_PARAM_PSSM_SPLIT_WEIGHT = 1;
  public static readonly int SHADOW_PARAM_PSSM_ZOFFSET_SCALE = 2;

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

%typemap(cscode) DirectionalLight %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) DirectionalLight %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor DirectionalLight;

class DirectionalLight : public Light {
public:
  %extend {
    void set_shadow_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_mode", mode);
    }
  }
  %extend {
    int get_shadow_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shadow_mode");
    }
  }
  %extend {
    void set_shadow_param(int param, float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shadow_param", param, value);
    }
  }
  %extend {
    float get_shadow_param(int param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shadow_param", param);
    }
  }
  DirectionalLight();

};
