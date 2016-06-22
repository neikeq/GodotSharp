/* mListener.i */
%module mListener

%typemap(out) Listener "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Listener* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Listener %{

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

%typemap(cscode) Listener %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Listener %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Listener;

class Listener : public Spatial {
public:
  %extend {
    void make_current() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("make_current");
    }
  }
  %extend {
    void clear_current() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_current");
    }
  }
  %extend {
    bool is_current() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_current");
    }
  }
  %extend {
    Transform get_listener_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_listener_transform");
    }
  }
  Listener();

};
