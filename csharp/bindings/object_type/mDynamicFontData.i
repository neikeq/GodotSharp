/* mDynamicFontData.i */
%module mDynamicFontData

%typemap(ctype, out="DynamicFontData*") Ref<DynamicFontData> "DynamicFontData*"
%typemap(out, null="NULL") Ref<DynamicFontData> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<DynamicFontData> "DynamicFontData.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<DynamicFontData> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<DynamicFontData> "DynamicFontData"
%typemap(csout, excode=SWIGEXCODE) Ref<DynamicFontData> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    DynamicFontData ret = InternalHelpers.UnmanagedGetManaged(cPtr) as DynamicFontData;$excode
    return ret;
}

template<class DynamicFontData> class Ref;%template() Ref<DynamicFontData>;
%feature("novaluewrapper") Ref<DynamicFontData>;


%typemap(csbody_derived) DynamicFontData %{

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

%typemap(cscode) DynamicFontData %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) DynamicFontData %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor DynamicFontData;

class DynamicFontData : public Resource {
public:
  %extend {
    void set_font_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_font_path", path);
    }
  }
  %extend {
    String get_font_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_font_path");
    }
  }
  DynamicFontData();
  %extend {
    ~DynamicFontData() {
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
