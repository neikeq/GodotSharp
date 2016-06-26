/* mColorRamp.i */
%module mColorRamp

template<class ColorRamp> class Ref;%template() Ref<ColorRamp>;
%feature("novaluewrapper") Ref<ColorRamp>;


%typemap(csbody_derived) ColorRamp %{

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

%typemap(cscode) ColorRamp %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorRamp %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorRamp;

class ColorRamp : public Resource {
public:
  ColorRamp();

%extend {

void add_point(float offset, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "add_point");
  const void* __args[2] = { &offset, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_point(int offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "remove_point");
  const void* __args[1] = { &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_offset(int point, float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "set_offset");
  const void* __args[2] = { &point, &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_offset(int point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "get_offset");
  const void* __args[1] = { &point };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_color(int point, const Color& color) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "set_color");
  const void* __args[2] = { &point, &color };
  __method_bind->ptrcall($self, __args, NULL);
}

Color get_color(int point) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "get_color");
  const void* __args[1] = { &point };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Color interpolate(float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "interpolate");
  const void* __args[1] = { &offset };
  Color ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_point_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "get_point_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_offsets(const RealArray& offsets) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "set_offsets");
  const void* __args[1] = { &offsets };
  __method_bind->ptrcall($self, __args, NULL);
}

RealArray get_offsets() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "get_offsets");
  RealArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_colors(const ColorArray& colors) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "set_colors");
  const void* __args[1] = { &colors };
  __method_bind->ptrcall($self, __args, NULL);
}

ColorArray get_colors() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ColorRamp", "get_colors");
  ColorArray ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ColorRamp() {
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
