/* mDynamicFont.i */
%module mDynamicFont

%typemap(ctype, out="DynamicFont*") Ref<DynamicFont> "DynamicFont*"
%typemap(out, null="NULL") Ref<DynamicFont> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<DynamicFont> "DynamicFont.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<DynamicFont> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<DynamicFont> "DynamicFont"
%typemap(csout, excode=SWIGEXCODE) Ref<DynamicFont> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    DynamicFont ret = InternalHelpers.UnmanagedGetManaged(cPtr) as DynamicFont;$excode
    return ret;
}

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
  %extend {
    void set_font_data(Ref<DynamicFontData> data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_font_data", data);
    }
  }
  %extend {
    Ref<DynamicFontData> get_font_data() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_font_data").operator Object *()->cast_to<DynamicFontData>();
    }
  }
  %extend {
    void set_size(int data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size", data);
    }
  }
  %extend {
    int get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  %extend {
    void add_fallback(Ref<DynamicFontData> data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_fallback", data);
    }
  }
  %extend {
    void set_fallback(int idx, Ref<DynamicFontData> data) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fallback", idx, data);
    }
  }
  %extend {
    Ref<DynamicFontData> get_fallback(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fallback", idx).operator Object *()->cast_to<DynamicFontData>();
    }
  }
  %extend {
    void remove_fallback(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_fallback", idx);
    }
  }
  %extend {
    int get_fallback_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fallback_count");
    }
  }
  DynamicFont();
  %extend {
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
