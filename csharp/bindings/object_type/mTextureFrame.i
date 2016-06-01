/* mTextureFrame.i */
%module mTextureFrame


%typemap(csbody_derived) TextureFrame %{
  public static readonly int STRETCH_SCALE_ON_EXPAND = 0;
  public static readonly int STRETCH_SCALE = 1;
  public static readonly int STRETCH_TILE = 2;
  public static readonly int STRETCH_KEEP = 3;
  public static readonly int STRETCH_KEEP_CENTERED = 4;

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

%typemap(cscode) TextureFrame %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TextureFrame %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TextureFrame;

class TextureFrame : public Control {
public:
  %extend {
    void set_texture(Object* texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_texture", texture);
    }
  }
  %extend {
    Object* get_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture").operator Object *();
    }
  }
  %extend {
    void set_modulate(const Color& modulate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", modulate);
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  %extend {
    void set_expand(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand", enable);
    }
  }
  %extend {
    bool has_expand() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_expand");
    }
  }
  %extend {
    void set_stretch_mode(int stretch_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stretch_mode", stretch_mode);
    }
  }
  %extend {
    int get_stretch_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stretch_mode");
    }
  }
  TextureFrame();

};
