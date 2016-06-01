/* mYSort.i */
%module mYSort


%typemap(csbody_derived) YSort %{

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

%typemap(cscode) YSort %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) YSort %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor YSort;

class YSort : public Node2D {
public:
  %extend {
    void set_sort_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_sort_enabled", enabled);
    }
  }
  %extend {
    bool is_sort_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_sort_enabled");
    }
  }
  YSort();

};
