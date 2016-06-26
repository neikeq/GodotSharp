/* mStyleBox.i */
%module mStyleBox

%nodefaultctor StyleBox;
template<class StyleBox> class Ref;%template() Ref<StyleBox>;
%feature("novaluewrapper") Ref<StyleBox>;


%typemap(csbody_derived) StyleBox %{

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

%typemap(cscode) StyleBox %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBox %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBox;

class StyleBox : public Resource {
public:

%extend {

bool test_mask(const Vector2& point, const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "test_mask");
  const void* __args[2] = { &point, &rect };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_default_margin(int margin, float offset) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "set_default_margin");
  const void* __args[2] = { &margin, &offset };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_default_margin(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "get_default_margin");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

float get_margin(int margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "get_margin");
  const void* __args[1] = { &margin };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Vector2 get_minimum_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "get_minimum_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_center_size() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "get_center_size");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

Vector2 get_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "get_offset");
  Vector2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void draw(const RID& canvas_item, const Rect2& rect) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("StyleBox", "draw");
  const void* __args[2] = { &canvas_item, &rect };
  __method_bind->ptrcall($self, __args, NULL);
}

~StyleBox() {
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
