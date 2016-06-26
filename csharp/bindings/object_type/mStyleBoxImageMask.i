/* mStyleBoxImageMask.i */
%module mStyleBoxImageMask

template<class StyleBoxImageMask> class Ref;%template() Ref<StyleBoxImageMask>;
%feature("novaluewrapper") Ref<StyleBoxImageMask>;


%typemap(csbody_derived) StyleBoxImageMask %{

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

%typemap(cscode) StyleBoxImageMask %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxImageMask %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxImageMask;

class StyleBoxImageMask : public StyleBox {
public:
  StyleBoxImageMask();

%extend {

void set_image(const Image& image) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "set_image");
  const void* __args[1] = { &image };
  __method_bind->ptrcall($self, __args, NULL);
}

Image get_image() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "get_image");
  Image ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_expand(bool expand) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "set_expand");
  const void* __args[1] = { &expand };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_expand() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "get_expand");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_expand_margin_size(int margin, float size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "set_expand_margin_size");
  const void* __args[2] = { &margin, &size };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_expand_margin_size(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxImageMask", "get_expand_margin_size");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~StyleBoxImageMask() {
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
