/* mShader.i */
%module mShader

%nodefaultctor Shader;

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
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mode");
    }
  }
  %extend {
    void set_code(const String& vcode, const String& fcode, const String& lcode, int fofs = 0, int lofs = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_code", vcode, fcode, lcode, fofs, lofs);
    }
  }
  %extend {
    String get_vertex_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertex_code");
    }
  }
  %extend {
    String get_fragment_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fragment_code");
    }
  }
  %extend {
    String get_light_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_light_code");
    }
  }
  %extend {
    void set_default_texture_param(const String& param, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_texture_param", param, texture);
    }
  }
  %extend {
    Ref<Texture> get_default_texture_param(const String& param) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_texture_param", param).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    bool has_param(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_param", name);
    }
  }

};
