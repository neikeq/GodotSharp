/* mGDFunctionState.i */
%module mGDFunctionState

%nodefaultctor GDFunctionState;

%typemap(csbody_derived) GDFunctionState %{

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

%typemap(cscode) GDFunctionState %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) GDFunctionState %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GDFunctionState;

class GDFunctionState : public Reference {
public:
  %extend {
    Variant resume(const Variant& arg_ = Variant()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resume", arg_);
    }
  }
  %extend {
    bool is_valid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_valid");
    }
  }

};
