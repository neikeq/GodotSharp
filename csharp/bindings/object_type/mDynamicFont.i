/* mDynamicFont.i */
%module mDynamicFont

template<class DynamicFont> class Ref;%template() Ref<DynamicFont>;
%feature("novaluewrapper") Ref<DynamicFont>;


%typemap(csbody_derived) DynamicFont %{

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

%typemap(cscode) DynamicFont %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) DynamicFont %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor DynamicFont;

class DynamicFont : public Font {
public:
  DynamicFont();

%extend {

void set_font_data(DynamicFontData* data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "set_font_data");
  const void* __args[1] = { data };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<DynamicFontData> get_font_data() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "get_font_data");
  Ref<DynamicFontData> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_size(int data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "set_size");
  const void* __args[1] = { &data };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "get_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_fallback(DynamicFontData* data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "add_fallback");
  const void* __args[1] = { data };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_fallback(int idx, DynamicFontData* data) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "set_fallback");
  const void* __args[2] = { &idx, data };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<DynamicFontData> get_fallback(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "get_fallback");
  const void* __args[1] = { &idx };
  Ref<DynamicFontData> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_fallback(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "remove_fallback");
  const void* __args[1] = { &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_fallback_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("DynamicFont", "get_fallback_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~DynamicFont() {
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
