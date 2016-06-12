/* mShortCut.i */
%module mShortCut


%typemap(csbody_derived) ShortCut %{

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

%typemap(cscode) ShortCut %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ShortCut %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ShortCut;

class ShortCut : public Resource {
public:
  %extend {
    void set_shortcut(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shortcut", event);
    }
  }
  %extend {
    InputEvent get_shortcut() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shortcut");
    }
  }
  %extend {
    bool is_valid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_valid");
    }
  }
  %extend {
    bool is_shortcut(const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_shortcut", event);
    }
  }
  %extend {
    String get_as_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_as_text");
    }
  }
  ShortCut();

};
