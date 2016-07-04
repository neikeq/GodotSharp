/* mShader.i */
%module mShader

%nodefaultctor Shader;
template<class Shader> class Ref;%template() Ref<Shader>;
%feature("novaluewrapper") Ref<Shader>;


%typemap(csbody_derived) Shader %{
  public static readonly int MODE_MATERIAL = 0;
  public static readonly int MODE_CANVAS_ITEM = 1;
  public static readonly int MODE_POST_PROCESS = 2;

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

%typemap(cscode) Shader %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Shader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Shader;

class Shader : public Resource {
public:

%extend {

int get_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "get_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_code(const String& vcode, const String& fcode, const String& lcode, int fofs = 0, int lofs = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "set_code");
  const void* __args[5] = { &vcode, &fcode, &lcode, &fofs, &lofs };
  __method_bind->ptrcall($self, __args, NULL);
}

String get_vertex_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "get_vertex_code");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_fragment_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "get_fragment_code");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_light_code() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "get_light_code");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_default_texture_param(const String& param, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "set_default_texture_param");
  const void* __args[2] = { &param, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_default_texture_param(const String& param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "get_default_texture_param");
  const void* __args[1] = { &param };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_param(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Shader", "has_param");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Shader() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
