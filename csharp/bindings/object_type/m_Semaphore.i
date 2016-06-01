/* m_Semaphore.i */
%module m_Semaphore

%rename(Semaphore) _Semaphore;

%typemap(csbody_derived) _Semaphore %{

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

%typemap(cscode) _Semaphore %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Semaphore %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor _Semaphore;

class _Semaphore : public Reference {
public:
  %extend {
    int wait() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("wait");
    }
  }
  %extend {
    int post() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("post");
    }
  }
  _Semaphore();

};
