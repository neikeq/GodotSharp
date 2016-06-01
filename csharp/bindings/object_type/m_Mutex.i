/* m_Mutex.i */
%module m_Mutex

%rename(Mutex) _Mutex;

%typemap(csbody_derived) _Mutex %{

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

%typemap(cscode) _Mutex %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Mutex %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor _Mutex;

class _Mutex : public Reference {
public:
  %extend {
    void lock() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("lock");
    }
  }
  %extend {
    int try_lock() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("try_lock");
    }
  }
  %extend {
    void unlock() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unlock");
    }
  }
  _Mutex();

};
