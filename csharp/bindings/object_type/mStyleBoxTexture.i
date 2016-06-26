/* mStyleBoxTexture.i */
%module mStyleBoxTexture

template<class StyleBoxTexture> class Ref;%template() Ref<StyleBoxTexture>;
%feature("novaluewrapper") Ref<StyleBoxTexture>;


%typemap(csbody_derived) StyleBoxTexture %{

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

%typemap(cscode) StyleBoxTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxTexture;

class StyleBoxTexture : public StyleBox {
public:
  StyleBoxTexture();

%extend {

void set_texture(Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "set_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_texture() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "get_texture");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_margin_size(int margin, float size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "set_margin_size");
  const void* __args[2] = { &margin, &size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_margin_size(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "get_margin_size");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_expand_margin_size(int margin, float size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "set_expand_margin_size");
  const void* __args[2] = { &margin, &size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_expand_margin_size(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "get_expand_margin_size");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_region_rect(const Rect2& region) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "set_region_rect");
  const void* __args[1] = { &region };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_region_rect() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "get_region_rect");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_center(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "set_draw_center");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_draw_center() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxTexture", "get_draw_center");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~StyleBoxTexture() {
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
