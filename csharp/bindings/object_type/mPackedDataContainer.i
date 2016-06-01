/* mPackedDataContainer.i */
%module mPackedDataContainer


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

};
