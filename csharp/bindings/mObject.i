/* mObject.i */
%module mObject

%define VARIANT_ARG_LIST const Variant& p_arg1=Variant(),const Variant& p_arg2=Variant(),const Variant& p_arg3=Variant(),const Variant& p_arg4=Variant(),const Variant& p_arg5=Variant() %enddef

%typemap(out) SWIGTYPE 
%{ $result = /* TEST */ new $1_ltype((const $1_ltype &)$1); %}

%typemap(csbody) Object %{
  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  protected bool swigCMemOwn;
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal void internal_init(global::System.IntPtr cPtr, bool cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(csconstruct, excode=SWIGEXCODE) Object %{{
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall, false);
    }$excode
  }
%}

class Object {
public:
  Variant call(const StringName& p_name, VARIANT_ARG_LIST);
  void call_deferred(const StringName& p_method,VARIANT_ARG_LIST);
  Variant callv(const StringName& p_method,const Array& p_args);
  Object();
  ~Object();
};
