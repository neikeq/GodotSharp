/* mImageTexture.i */
%module mImageTexture

template<class ImageTexture> class Ref;%template() Ref<ImageTexture>;
%feature("novaluewrapper") Ref<ImageTexture>;


%typemap(csbody_derived) ImageTexture %{
  public static readonly int STORAGE_RAW = 0;
  public static readonly int STORAGE_COMPRESS_LOSSY = 1;
  public static readonly int STORAGE_COMPRESS_LOSSLESS = 2;

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

%typemap(cscode) ImageTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ImageTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ImageTexture;

class ImageTexture : public Texture {
public:
  ImageTexture();

%extend {

void create(int width, int height, int format, int flags = 7) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "create");
  const void* __args[4] = { &width, &height, &format, &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

void create_from_image(const Image& image, int flags = 7) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "create_from_image");
  const void* __args[2] = { &image, &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_format() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "get_format");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void load(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "load");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_data(const Image& image) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "set_data");
  const void* __args[1] = { &image };
  __method_bind->ptrcall($self, __args, NULL);
}

Image get_data() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "get_data");
  Image ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_storage(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "set_storage");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_storage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "get_storage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_lossy_storage_quality(float quality) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "set_lossy_storage_quality");
  const void* __args[1] = { &quality };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_lossy_storage_quality() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "get_lossy_storage_quality");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void fix_alpha_edges() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "fix_alpha_edges");
  __method_bind->ptrcall($self, NULL, NULL);
}

void premultiply_alpha() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "premultiply_alpha");
  __method_bind->ptrcall($self, NULL, NULL);
}

void normal_to_xy() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "normal_to_xy");
  __method_bind->ptrcall($self, NULL, NULL);
}

void shrink_x2_and_keep_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "shrink_x2_and_keep_size");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_size_override(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ImageTexture", "set_size_override");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

~ImageTexture() {
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
