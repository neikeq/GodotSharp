/* mShaderMaterial.i */
%module mShaderMaterial

template<class ShaderMaterial> class Ref;%template() Ref<ShaderMaterial>;
%feature("novaluewrapper") Ref<ShaderMaterial>;


%typemap(csbody_derived) ShaderMaterial %{

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

%typemap(cscode) ShaderMaterial %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ShaderMaterial %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ShaderMaterial;

class ShaderMaterial : public Material {
public:
  ShaderMaterial();

%extend {

void set_shader(Shader* shader) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderMaterial", "set_shader");
  const void* __args[1] = { shader };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Shader> get_shader() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderMaterial", "get_shader");
  Ref<Shader> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shader_param(const String& param, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderMaterial", "set_shader_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

Variant get_shader_param(const String& param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShaderMaterial", "get_shader_param");
  const void* __args[1] = { &param };
  Variant ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~ShaderMaterial() {
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
