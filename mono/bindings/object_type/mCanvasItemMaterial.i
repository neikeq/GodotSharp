/* mCanvasItemMaterial.i */
%module mCanvasItemMaterial

template<class CanvasItemMaterial> class Ref;%template() Ref<CanvasItemMaterial>;
%feature("novaluewrapper") Ref<CanvasItemMaterial>;


%typemap(csbody_derived) CanvasItemMaterial %{
  public static readonly int SHADING_NORMAL = 0;
  public static readonly int SHADING_UNSHADED = 1;
  public static readonly int SHADING_ONLY_LIGHT = 2;

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

%typemap(cscode) CanvasItemMaterial %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CanvasItemMaterial %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CanvasItemMaterial;

class CanvasItemMaterial : public Resource {
public:
  CanvasItemMaterial();

%extend {

void set_shader(Shader* shader) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "set_shader");
  const void* __args[1] = { shader };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Shader> get_shader() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "get_shader");
  Ref<Shader> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_shader_param(const String& param, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "set_shader_param");
  const void* __args[2] = { &param, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void get_shader_param(const String& param) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "get_shader_param");
  const void* __args[1] = { &param };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_shading_mode(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "set_shading_mode");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_shading_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CanvasItemMaterial", "get_shading_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~CanvasItemMaterial() {
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
