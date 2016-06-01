/* mBoxContainer.i */
%module mBoxContainer

%nodefaultctor BoxContainer;

%typemap(csbody_derived) BoxContainer %{
  public static readonly int ALIGN_BEGIN = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_END = 2;

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

%typemap(cscode) BoxContainer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) BoxContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BoxContainer;

class BoxContainer : public Container {
public:
  %extend {
    void add_spacer(bool begin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_spacer", begin);
    }
  }
  %extend {
    int get_alignment() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_alignment");
    }
  }
  %extend {
    void set_alignment(int alignment) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_alignment", alignment);
    }
  }

};
