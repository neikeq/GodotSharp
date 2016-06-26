/* mTheme.i */
%module mTheme

template<class Theme> class Ref;%template() Ref<Theme>;
%feature("novaluewrapper") Ref<Theme>;


%typemap(csbody_derived) Theme %{

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

%typemap(cscode) Theme %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Theme %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Theme;

class Theme : public Resource {
public:
  Theme();

%extend {

void set_icon(const String& name, const String& type, Texture* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_icon");
  const void* __args[3] = { &name, &type, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_icon(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_icon");
  const void* __args[2] = { &name, &type };
  Ref<Texture> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_icon(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "has_icon");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_icon(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "clear_icon");
  const void* __args[2] = { &name, &type };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_icon_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_icon_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_stylebox(const String& name, const String& type, StyleBox* texture) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_stylebox");
  const void* __args[3] = { &name, &type, texture };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<StyleBox> get_stylebox(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_stylebox");
  const void* __args[2] = { &name, &type };
  Ref<StyleBox> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_stylebox(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "has_stylebox");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_stylebox(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "clear_stylebox");
  const void* __args[2] = { &name, &type };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_stylebox_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_stylebox_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

StringArray get_stylebox_types() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_stylebox_types");
  StringArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_font(const String& name, const String& type, Font* font) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_font");
  const void* __args[3] = { &name, &type, font };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Font> get_font(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_font");
  const void* __args[2] = { &name, &type };
  Ref<Font> ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_font(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "has_font");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_font(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "clear_font");
  const void* __args[2] = { &name, &type };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_font_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_font_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color(const String& name, const String& type, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_color");
  const void* __args[3] = { &name, &type, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_color");
  const void* __args[2] = { &name, &type };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_color(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "has_color");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_color(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "clear_color");
  const void* __args[2] = { &name, &type };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_color_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_color_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_constant(const String& name, const String& type, int constant) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_constant");
  const void* __args[3] = { &name, &type, &constant };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_constant(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_constant");
  const void* __args[2] = { &name, &type };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_constant(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "has_constant");
  const void* __args[2] = { &name, &type };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void clear_constant(const String& name, const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "clear_constant");
  const void* __args[2] = { &name, &type };
  __method_bind->ptrcall($self, __args, NULL);
}

StringArray get_constant_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_constant_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_default_font(Object* font) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "set_default_font");
  const void* __args[1] = { font };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_default_font() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_default_font");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

StringArray get_type_list(const String& type) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "get_type_list");
  const void* __args[1] = { &type };
  StringArray ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void copy_default_theme() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Theme", "copy_default_theme");
  __method_bind->ptrcall($self, NULL, NULL);
}

~Theme() {
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
