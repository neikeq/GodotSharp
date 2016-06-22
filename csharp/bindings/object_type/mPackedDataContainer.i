/* mPackedDataContainer.i */
%module mPackedDataContainer

%typemap(ctype, out="PackedDataContainer*") Ref<PackedDataContainer> "PackedDataContainer*"
%typemap(out, null="NULL") Ref<PackedDataContainer> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<PackedDataContainer> "PackedDataContainer.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedDataContainer> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedDataContainer> "PackedDataContainer"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedDataContainer> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedDataContainer ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedDataContainer;$excode
    return ret;
}

template<class PackedDataContainer> class Ref;%template() Ref<PackedDataContainer>;
%feature("novaluewrapper") Ref<PackedDataContainer>;


%typemap(csbody_derived) PackedDataContainer %{

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

%typemap(cscode) PackedDataContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PackedDataContainer %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PackedDataContainer;

class PackedDataContainer : public Resource {
public:
  %extend {
    int pack(const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pack", value);
    }
  }
  %extend {
    int size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("size");
    }
  }
  PackedDataContainer();
  %extend {
    ~PackedDataContainer() {
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
