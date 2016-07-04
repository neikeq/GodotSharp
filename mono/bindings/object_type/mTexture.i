/* mTexture.i */
%module mTexture

%nodefaultctor Texture;
template<class Texture> class Ref;%template() Ref<Texture>;
%feature("novaluewrapper") Ref<Texture>;


%typemap(csbody_derived) Texture %{
  public static readonly int FLAG_MIPMAPS = 1;
  public static readonly int FLAG_REPEAT = 2;
  public static readonly int FLAG_FILTER = 4;
  public static readonly int FLAG_VIDEO_SURFACE = 4096;
  public static readonly int FLAGS_DEFAULT = 7;
  public static readonly int FLAG_ANISOTROPIC_FILTER = 8;
  public static readonly int FLAG_CONVERT_TO_LINEAR = 16;
  public static readonly int FLAG_MIRRORED_REPEAT = 32;

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

%typemap(cscode) Texture %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Texture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Texture;

class Texture : public Resource {
public:

%extend {

int get_width() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "get_width");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "get_height");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "get_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "get_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool has_alpha() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "has_alpha");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flags(int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "set_flags");
  const void* __args[1] = { &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_flags() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "get_flags");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void draw(const RID& canvas_item, const Vector2& pos, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "draw");
  const void* __args[4] = { &canvas_item, &pos, &modulate, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_rect(const RID& canvas_item, const Rect2& rect, bool tile, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "draw_rect");
  const void* __args[5] = { &canvas_item, &rect, &tile, &modulate, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

void draw_rect_region(const RID& canvas_item, const Rect2& rect, const Rect2& src_rect, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Texture", "draw_rect_region");
  const void* __args[5] = { &canvas_item, &rect, &src_rect, &modulate, &transpose };
  __method_bind->ptrcall($self, __args, NULL);
}

~Texture() {
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
