/* mStyleBoxFlat.i */
%module mStyleBoxFlat

template<class StyleBoxFlat> class Ref;%template() Ref<StyleBoxFlat>;
%feature("novaluewrapper") Ref<StyleBoxFlat>;


%typemap(csbody_derived) StyleBoxFlat %{

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

%typemap(cscode) StyleBoxFlat %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxFlat %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxFlat;

class StyleBoxFlat : public StyleBox {
public:
  StyleBoxFlat();

%extend {

void set_bg_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_bg_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_bg_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_bg_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_light_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_light_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_light_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_light_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_dark_color(const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_dark_color");
  const void* __args[1] = { &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_dark_color() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_dark_color");
  Color ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_border_size(int size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_border_size");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_border_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_border_size");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_border_blend(bool blend) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_border_blend");
  const void* __args[1] = { &blend };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_border_blend() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_border_blend");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_draw_center(bool size) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "set_draw_center");
  const void* __args[1] = { &size };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_draw_center() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBoxFlat", "get_draw_center");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~StyleBoxFlat() {
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
