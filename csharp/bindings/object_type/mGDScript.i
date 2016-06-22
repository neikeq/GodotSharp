/* mGDScript.i */
%module mGDScript

%typemap(ctype, out="GDScript*") Ref<GDScript> "GDScript*"
%typemap(out, null="NULL") Ref<GDScript> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<GDScript> "GDScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<GDScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<GDScript> "GDScript"
%typemap(csout, excode=SWIGEXCODE) Ref<GDScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    GDScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as GDScript;$excode
    return ret;
}

template<class GDScript> class Ref;%template() Ref<GDScript>;
%feature("novaluewrapper") Ref<GDScript>;


%typemap(csbody_derived) GDScript %{

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

%typemap(cscode) GDScript %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GDScript %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GDScript;

class GDScript : public Script {
public:
  %extend {
    void new() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("new");
    }
  }
  %extend {
    RawArray get_as_byte_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_as_byte_code");
    }
  }
  GDScript();
  %extend {
    ~GDScript() {
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
