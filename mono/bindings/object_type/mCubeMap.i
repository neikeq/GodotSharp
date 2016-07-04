/* mCubeMap.i */
%module mCubeMap

template<class CubeMap> class Ref;%template() Ref<CubeMap>;
%feature("novaluewrapper") Ref<CubeMap>;


%typemap(csbody_derived) CubeMap %{
  public static readonly int STORAGE_RAW = 0;
  public static readonly int STORAGE_COMPRESS_LOSSY = 1;
  public static readonly int STORAGE_COMPRESS_LOSSLESS = 2;
  public static readonly int SIDE_LEFT = 0;
  public static readonly int SIDE_RIGHT = 1;
  public static readonly int SIDE_BOTTOM = 2;
  public static readonly int SIDE_TOP = 3;
  public static readonly int SIDE_FRONT = 4;
  public static readonly int SIDE_BACK = 5;
  public static readonly int FLAG_MIPMAPS = 1;
  public static readonly int FLAG_REPEAT = 2;
  public static readonly int FLAG_FILTER = 4;
  public static readonly int FLAGS_DEFAULT = 7;

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

%typemap(cscode) CubeMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CubeMap %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CubeMap;

class CubeMap : public Resource {
public:
  CubeMap();

%extend {

int get_width() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_width");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_height");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

RID get_rid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_rid");
  RID ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_flags(int flags) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "set_flags");
  const void* __args[1] = { &flags };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_flags() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_flags");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_side(int side, const Image& image) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "set_side");
  const void* __args[2] = { &side, &image };
  __method_bind->ptrcall($self, __args, NULL);
}

Image get_side(int side) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_side");
  const void* __args[1] = { &side };
  Image ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_storage(int mode) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "set_storage");
  const void* __args[1] = { &mode };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_storage() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_storage");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_lossy_storage_quality(float quality) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "set_lossy_storage_quality");
  const void* __args[1] = { &quality };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_lossy_storage_quality() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CubeMap", "get_lossy_storage_quality");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~CubeMap() {
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
