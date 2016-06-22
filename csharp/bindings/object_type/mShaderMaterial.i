/* mShaderMaterial.i */
%module mShaderMaterial

%typemap(ctype, out="ShaderMaterial*") Ref<ShaderMaterial> "ShaderMaterial*"
%typemap(out, null="NULL") Ref<ShaderMaterial> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ShaderMaterial> "ShaderMaterial.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ShaderMaterial> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ShaderMaterial> "ShaderMaterial"
%typemap(csout, excode=SWIGEXCODE) Ref<ShaderMaterial> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ShaderMaterial ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ShaderMaterial;$excode
    return ret;
}

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
  %extend {
    void set_shader(Ref<Shader> shader) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shader", shader);
    }
  }
  %extend {
    Ref<Shader> get_shader() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shader").operator Object *()->cast_to<Shader>();
    }
  }
  %extend {
    void set_shader_param(const String& param, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shader_param", param, value);
    }
  }
  %extend {
    Variant get_shader_param(const String& param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shader_param", param);
    }
  }
  ShaderMaterial();
  %extend {
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
