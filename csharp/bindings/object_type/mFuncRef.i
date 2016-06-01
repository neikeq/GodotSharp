/* mFuncRef.i */
%module mFuncRef


%typemap(csbody_derived) FuncRef %{

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

%typemap(cscode) FuncRef %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) FuncRef %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor FuncRef;

class FuncRef : public Reference {
public:
  %extend {
    void call_func(const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant(), const Variant& arg6_ = Variant(), const Variant& arg7_ = Variant(), const Variant& arg8_ = Variant(), const Variant& arg9_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(arg0_);
Variant arg_1_ = Variant(arg1_);
Variant arg_2_ = Variant(arg2_);
Variant arg_3_ = Variant(arg3_);
Variant arg_4_ = Variant(arg4_);
Variant arg_5_ = Variant(arg5_);
Variant arg_6_ = Variant(arg6_);
Variant arg_7_ = Variant(arg7_);
Variant arg_8_ = Variant(arg8_);
Variant arg_9_ = Variant(arg9_);
Variant *args_[10] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_, &arg_8_, &arg_9_ };
$self->call("call_func", (const Variant **) args_, 10, err);
    }
  }
  %extend {
    void set_instance(Object* instance) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_instance", instance);
    }
  }
  %extend {
    void set_function(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_function", name);
    }
  }
  FuncRef();

};
