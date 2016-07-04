/* mTextureFrame.i */
%module mTextureFrame


%typemap(csbody_derived) TextureFrame %{
  public static readonly int STRETCH_SCALE_ON_EXPAND = 0;
  public static readonly int STRETCH_SCALE = 1;
  public static readonly int STRETCH_TILE = 2;
  public static readonly int STRETCH_KEEP = 3;
  public static readonly int STRETCH_KEEP_CENTERED = 4;
  public static readonly int STRETCH_KEEP_ASPECT = 5;
  public static readonly int STRETCH_KEEP_ASPECT_CENTERED = 6;

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
  TextureFrame();

%extend {

void set_texture(Object* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "get_texture");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_modulate(const Color& modulate) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "set_modulate");
  const void* __args[1] = { &modulate };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_modulate() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "get_modulate");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_expand(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "set_expand");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_expand() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "has_expand");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_stretch_mode(int stretch_mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "set_stretch_mode");
  const void* __args[1] = { &stretch_mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_stretch_mode() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("TextureFrame", "get_stretch_mode");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
