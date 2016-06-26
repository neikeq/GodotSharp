/* mLargeTexture.i */
%module mLargeTexture

template<class LargeTexture> class Ref;%template() Ref<LargeTexture>;
%feature("novaluewrapper") Ref<LargeTexture>;


%typemap(csbody_derived) LargeTexture %{

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

%typemap(cscode) LargeTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LargeTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor LargeTexture;

class LargeTexture : public Texture {
public:
  LargeTexture();

%extend {

int add_piece(const Vector2& ofs, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "add_piece");
  const void* __args[2] = { &ofs, texture };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_piece_offset(int idx, const Vector2& ofs) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "set_piece_offset");
  const void* __args[2] = { &idx, &ofs };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_piece_texture(int idx, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "set_piece_texture");
  const void* __args[2] = { &idx, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_size(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "set_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_piece_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "get_piece_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_piece_offset(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "get_piece_offset");
  const void* __args[1] = { &idx };
  Vector2 ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Ref<Texture> get_piece_texture(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("LargeTexture", "get_piece_texture");
  const void* __args[1] = { &idx };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~LargeTexture() {
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
