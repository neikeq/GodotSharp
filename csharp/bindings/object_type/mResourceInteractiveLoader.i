/* mResourceInteractiveLoader.i */
%module mResourceInteractiveLoader

%nodefaultctor ResourceInteractiveLoader;
%typemap(ctype, out="ResourceInteractiveLoader*") Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader*"
%typemap(out, null="NULL") Ref<ResourceInteractiveLoader> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ResourceInteractiveLoader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader"
%typemap(csout, excode=SWIGEXCODE) Ref<ResourceInteractiveLoader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ResourceInteractiveLoader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ResourceInteractiveLoader;$excode
    return ret;
}

template<class ResourceInteractiveLoader> class Ref;%template() Ref<ResourceInteractiveLoader>;
%feature("novaluewrapper") Ref<ResourceInteractiveLoader>;


%typemap(csbody_derived) ResourceInteractiveLoader %{

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

%typemap(cscode) ResourceInteractiveLoader %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) ResourceInteractiveLoader %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ResourceInteractiveLoader;

class ResourceInteractiveLoader : public Reference {
public:
  %extend {
    Object* get_resource() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_resource").operator Object *();
    }
  }
  %extend {
    int poll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("poll");
    }
  }
  %extend {
    int wait() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait");
    }
  }
  %extend {
    int get_stage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stage");
    }
  }
  %extend {
    int get_stage_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stage_count");
    }
  }
  %extend {
    ~ResourceInteractiveLoader() {
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
