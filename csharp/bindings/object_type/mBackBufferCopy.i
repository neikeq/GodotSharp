/* mBackBufferCopy.i */
%module mBackBufferCopy


%typemap(csbody_derived) BackBufferCopy %{
  public static readonly int COPY_MODE_DISABLED = 0;
  public static readonly int COPY_MODE_RECT = 1;
  public static readonly int COPY_MODE_VIEWPORT = 2;

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

%typemap(cscode) BackBufferCopy %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BackBufferCopy %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor BackBufferCopy;

class BackBufferCopy : public Node2D {
public:
  %extend {
    void set_rect(const Rect2& rect) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rect", rect);
    }
  }
  %extend {
    Rect2 get_rect() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rect");
    }
  }
  %extend {
    void set_copy_mode(int copy_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_copy_mode", copy_mode);
    }
  }
  %extend {
    int get_copy_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_copy_mode");
    }
  }
  BackBufferCopy();

};
