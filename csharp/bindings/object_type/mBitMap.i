/* mBitMap.i */
%module mBitMap

template<class BitMap> class Ref;%template() Ref<BitMap>;
%feature("novaluewrapper") Ref<BitMap>;


%typemap(csbody_derived) BitMap %{

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

%typemap(cscode) BitMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BitMap %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BitMap;

class BitMap : public Resource {
public:
  BitMap();

%extend {

void create(const Vector2& size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "create");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

void create_from_image_alpha(const Image& image) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "create_from_image_alpha");
  const void* __args[1] = { &image };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_bit(const Vector2& pos, bool bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "set_bit");
  const void* __args[2] = { &pos, &bit };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_bit(const Vector2& pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "get_bit");
  const void* __args[1] = { &pos };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_bit_rect(const Rect2& p_rect, bool bit) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "set_bit_rect");
  const void* __args[2] = { &p_rect, &bit };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_true_bit_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "get_true_bit_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("BitMap", "get_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~BitMap() {
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
