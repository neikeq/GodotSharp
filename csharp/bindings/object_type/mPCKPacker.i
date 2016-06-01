/* mPCKPacker.i */
%module mPCKPacker


%typemap(csbody_derived) PCKPacker %{

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

%typemap(cscode) PCKPacker %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PCKPacker %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PCKPacker;

class PCKPacker : public Reference {
public:
  %extend {
    int pck_start(const String& pck_name, int alignment) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("pck_start", pck_name, alignment);
    }
  }
  %extend {
    int add_file(const String& pck_path, const String& source_path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_file", pck_path, source_path);
    }
  }
  %extend {
    int flush(bool verbose) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("flush", verbose);
    }
  }
  PCKPacker();

};
