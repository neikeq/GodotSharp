/* mGridContainer.i */
%module mGridContainer


%typemap(csbody_derived) GridContainer %{

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

%typemap(cscode) GridContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GridContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor GridContainer;

class GridContainer : public Container {
public:
  %extend {
    void set_columns(int columns) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_columns", columns);
    }
  }
  %extend {
    int get_columns() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_columns");
    }
  }
  GridContainer();

};
