/* mGDScript.i */
%module mGDScript


%typemap(csbody_derived) GDScript %{

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

%typemap(cscode) GDScript %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GDScript %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor GDScript;

class GDScript : public Script {
public:
  %extend {
    void new() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("new");
    }
  }
  %extend {
    RawArray get_as_byte_code() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_as_byte_code");
    }
  }
  GDScript();

};
