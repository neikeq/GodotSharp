/* mVisibilityEnabler.i */
%module mVisibilityEnabler


%typemap(csbody_derived) VisibilityEnabler %{
  public static readonly int ENABLER_FREEZE_BODIES = 1;
  public static readonly int ENABLER_PAUSE_ANIMATIONS = 0;
  public static readonly int ENABLER_MAX = 2;

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

%typemap(cscode) VisibilityEnabler %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) VisibilityEnabler %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor VisibilityEnabler;

class VisibilityEnabler : public VisibilityNotifier {
public:
  %extend {
    void set_enabler(int enabler, bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabler", enabler, enabled);
    }
  }
  %extend {
    bool is_enabler_enabled(int enabler) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabler_enabled", enabler);
    }
  }
  VisibilityEnabler();

};
