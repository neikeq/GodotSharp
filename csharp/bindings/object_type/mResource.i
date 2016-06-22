/* mResource.i */
%module mResource

%typemap(ctype, out="Resource*") Ref<Resource> "Resource*"
%typemap(out, null="NULL") Ref<Resource> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Resource> "Resource.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Resource> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Resource> "Resource"
%typemap(csout, excode=SWIGEXCODE) Ref<Resource> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Resource ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Resource;$excode
    return ret;
}

template<class Resource> class Ref;%template() Ref<Resource>;
%feature("novaluewrapper") Ref<Resource>;


%typemap(csbody_derived) Resource %{

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

%typemap(cscode) Resource %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Resource %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Resource;

class Resource : public Reference {
public:
  %extend {
    void set_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_path", path);
    }
  }
  %extend {
    void take_over_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("take_over_path", path);
    }
  }
  %extend {
    String get_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_path");
    }
  }
  %extend {
    void set_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_name", name);
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
    }
  }
  %extend {
    void set_import_metadata(Object* metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_import_metadata", metadata);
    }
  }
  %extend {
    Object* get_import_metadata() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_import_metadata").operator Object *();
    }
  }
  %extend {
    Object* duplicate(bool subresources = false) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("duplicate", subresources).operator Object *();
    }
  }
  Resource();
  %extend {
    ~Resource() {
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
