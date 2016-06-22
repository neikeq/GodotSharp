/* mStyleBoxImageMask.i */
%module mStyleBoxImageMask

%typemap(ctype, out="StyleBoxImageMask*") Ref<StyleBoxImageMask> "StyleBoxImageMask*"
%typemap(out, null="NULL") Ref<StyleBoxImageMask> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<StyleBoxImageMask> "StyleBoxImageMask.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxImageMask> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxImageMask> "StyleBoxImageMask"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxImageMask> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxImageMask ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxImageMask;$excode
    return ret;
}

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
  %extend {
    void set_image(const Image& image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_image", image);
    }
  }
  %extend {
    Image get_image() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_image");
    }
  }
  %extend {
    void set_expand(bool expand) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand", expand);
    }
  }
  %extend {
    bool get_expand() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_expand");
    }
  }
  %extend {
    void set_expand_margin_size(int margin, float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand_margin_size", margin, size);
    }
  }
  %extend {
    float get_expand_margin_size(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_expand_margin_size", margin);
    }
  }
  StyleBoxImageMask();
  %extend {
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
