/* mWorldEnvironment.i */
%module mWorldEnvironment


%typemap(csbody_derived) WorldEnvironment %{

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

%typemap(cscode) WorldEnvironment %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) WorldEnvironment %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor WorldEnvironment;

class WorldEnvironment : public Spatial {
public:
  WorldEnvironment();

%extend {

void set_environment(Environment* env) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("WorldEnvironment", "set_environment");
  const void* __args[1] = { env };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Environment> get_environment() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("WorldEnvironment", "get_environment");
  Ref<Environment> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
