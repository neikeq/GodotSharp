/* mCanvasItemMaterial.i */
%module mCanvasItemMaterial


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
    void get_shader_param(const String& param) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_shader_param", param);
    }
  }
  %extend {
    void set_shading_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shading_mode", mode);
    }
  }
  %extend {
    int get_shading_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shading_mode");
    }
  }
  CanvasItemMaterial();

};
