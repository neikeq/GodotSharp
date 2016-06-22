/* mAtlasTexture.i */
%module mAtlasTexture

%typemap(ctype, out="AtlasTexture*") Ref<AtlasTexture> "AtlasTexture*"
%typemap(out, null="NULL") Ref<AtlasTexture> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<AtlasTexture> "AtlasTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AtlasTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AtlasTexture> "AtlasTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<AtlasTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AtlasTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AtlasTexture;$excode
    return ret;
}

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
  %extend {
    void set_atlas(Ref<Texture> atlas) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_atlas", atlas);
    }
  }
  %extend {
    Ref<Texture> get_atlas() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_atlas").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_region(const Rect2& region) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_region", region);
    }
  }
  %extend {
    Rect2 get_region() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_region");
    }
  }
  %extend {
    void set_margin(const Rect2& margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_margin", margin);
    }
  }
  %extend {
    Rect2 get_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin");
    }
  }
  AtlasTexture();
  %extend {
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
