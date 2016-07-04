/* mFont.i */
%module mFont

%nodefaultctor Font;
template<class Font> class Ref;%template() Ref<Font>;
%feature("novaluewrapper") Ref<Font>;


%typemap(csbody_derived) Font %{

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

%typemap(cscode) Font %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Font %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Font;

class Font : public Resource {
public:

%extend {

void draw(const RID& canvas_item, const Vector2& pos, const String& string, const Color& modulate = Color(1,1,1,1), int clip_w = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "draw");
  const void* __args[5] = { &canvas_item, &pos, &string, &modulate, &clip_w };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_ascent() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "get_ascent");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_descent() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "get_descent");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_height() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "get_height");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_distance_field_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "is_distance_field_hint");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_string_size(const String& string) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "get_string_size");
  const void* __args[1] = { &string };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float draw_char(const RID& canvas_item, const Vector2& pos, int char_, int next = -1, const Color& modulate = Color(1,1,1,1)) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Font", "draw_char");
  const void* __args[5] = { &canvas_item, &pos, &char_, &next, &modulate };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~Font() {
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
