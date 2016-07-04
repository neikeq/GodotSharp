/* mBitmapFont.i */
%module mBitmapFont

template<class BitmapFont> class Ref;%template() Ref<BitmapFont>;
%feature("novaluewrapper") Ref<BitmapFont>;


%typemap(csbody_derived) BitmapFont %{

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

%typemap(cscode) BitmapFont %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BitmapFont %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BitmapFont;

class BitmapFont : public Font {
public:
  BitmapFont();

%extend {

int create_from_fnt(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "create_from_fnt");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_height(float px) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "set_height");
  const void* __args[1] = { &px };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_ascent(float px) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "set_ascent");
  const void* __args[1] = { &px };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_kerning_pair(int char_a, int char_b, int kerning) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "add_kerning_pair");
  const void* __args[3] = { &char_a, &char_b, &kerning };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_kerning_pair(int char_a, int char_b) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "get_kerning_pair");
  const void* __args[2] = { &char_a, &char_b };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_texture(Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "add_texture");
  const void* __args[1] = { texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_char(int character, int texture, const Rect2& rect, const Vector2& align = Vector2(0,0), float advance = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "add_char");
  const void* __args[5] = { &character, &texture, &rect, &align, &advance };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_texture_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "get_texture_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Ref<Texture> get_texture(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "get_texture");
  const void* __args[1] = { &idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_char_size(int char_, int next = 0) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "get_char_size");
  const void* __args[2] = { &char_, &next };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_distance_field_hint(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "set_distance_field_hint");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_fallback(Object* fallback) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "set_fallback");
  const void* __args[1] = { fallback };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_fallback() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitmapFont", "get_fallback");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~BitmapFont() {
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
