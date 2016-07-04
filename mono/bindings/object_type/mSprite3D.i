/* mSprite3D.i */
%module mSprite3D


%typemap(csbody_derived) Sprite3D %{

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

%typemap(cscode) Sprite3D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Sprite3D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Sprite3D;

class Sprite3D : public SpriteBase3D {
public:
  Sprite3D();

%extend {

void set_texture(Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "get_texture");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_region(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_region");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_region() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "is_region");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_region_rect(const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_region_rect");
  const void* __args[1] = { &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_region_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "get_region_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_frame(int frame) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_frame");
  const void* __args[1] = { &frame };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_frame() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "get_frame");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_vframes(int vframes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_vframes");
  const void* __args[1] = { &vframes };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_vframes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "get_vframes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_hframes(int hframes) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "set_hframes");
  const void* __args[1] = { &hframes };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_hframes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Sprite3D", "get_hframes");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
