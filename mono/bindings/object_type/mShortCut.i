/* mShortCut.i */
%module mShortCut

template<class ShortCut> class Ref;%template() Ref<ShortCut>;
%feature("novaluewrapper") Ref<ShortCut>;


%typemap(csbody_derived) ShortCut %{

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

%typemap(cscode) ShortCut %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ShortCut %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ShortCut;

class ShortCut : public Resource {
public:
  ShortCut();

%extend {

void set_shortcut(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShortCut", "set_shortcut");
  const void* __args[1] = { &event };
  __method_bind->ptrcall($self, __args, NULL);
}

InputEvent get_shortcut() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShortCut", "get_shortcut");
  InputEvent ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_valid() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShortCut", "is_valid");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool is_shortcut(const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShortCut", "is_shortcut");
  const void* __args[1] = { &event };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_as_text() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("ShortCut", "get_as_text");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~ShortCut() {
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
