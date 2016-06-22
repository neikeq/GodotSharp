/* mScript.i */
%module mScript

%nodefaultctor Script;
%typemap(ctype, out="Script*") Ref<Script> "Script*"
%typemap(out, null="NULL") Ref<Script> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Script> "Script.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Script> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Script> "Script"
%typemap(csout, excode=SWIGEXCODE) Ref<Script> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Script ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Script;$excode
    return ret;
}

template<class Script> class Ref;%template() Ref<Script>;
%feature("novaluewrapper") Ref<Script>;


%typemap(csbody_derived) Script %{

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

%typemap(cscode) Script %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Script %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Script;

class Script : public Resource {
public:
  %extend {
    bool can_instance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_instance");
    }
  }
  %extend {
    bool instance_has(Object* base_object) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("instance_has", base_object);
    }
  }
  %extend {
    bool has_source_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_source_code");
    }
  }
  %extend {
    String get_source_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_source_code");
    }
  }
  %extend {
    void set_source_code(const String& source) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_source_code", source);
    }
  }
  %extend {
    int reload(bool keep_state = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("reload", keep_state);
    }
  }
  %extend {
    ~Script() {
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
