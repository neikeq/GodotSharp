/* mBakedLightSampler.i */
%module mBakedLightSampler


%typemap(csbody_derived) BakedLightSampler %{
  public static readonly int PARAM_RADIUS = 0;
  public static readonly int PARAM_STRENGTH = 1;
  public static readonly int PARAM_ATTENUATION = 2;
  public static readonly int PARAM_DETAIL_RATIO = 3;
  public static readonly int PARAM_MAX = 4;

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

%typemap(cscode) BakedLightSampler %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BakedLightSampler %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BakedLightSampler;

class BakedLightSampler : public VisualInstance {
public:
  BakedLightSampler();

%extend {

void set_param(int param, float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightSampler", "set_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_param(int param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightSampler", "get_param");
  const void* __args[1] = { &param };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_resolution(int resolution) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightSampler", "set_resolution");
  const void* __args[1] = { &resolution };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_resolution() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BakedLightSampler", "get_resolution");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
