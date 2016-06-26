/* mAtlasTexture.i */
%module mAtlasTexture

template<class AtlasTexture> class Ref;%template() Ref<AtlasTexture>;
%feature("novaluewrapper") Ref<AtlasTexture>;


%typemap(csbody_derived) AtlasTexture %{

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

%typemap(cscode) AtlasTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) AtlasTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor AtlasTexture;

class AtlasTexture : public Texture {
public:
  AtlasTexture();

%extend {

void set_atlas(Texture* atlas) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "set_atlas");
  const void* __args[1] = { atlas };
  __method_bind->ptrcall($self, __args, NULL);
}

Ref<Texture> get_atlas() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "get_atlas");
  Ref<Texture> ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_region(const Rect2& region) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "set_region");
  const void* __args[1] = { &region };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_region() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "get_region");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_margin(const Rect2& margin) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "set_margin");
  const void* __args[1] = { &margin };
  __method_bind->ptrcall($self, __args, NULL);
}

Rect2 get_margin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("AtlasTexture", "get_margin");
  Rect2 ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

~AtlasTexture() {
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
