/* mCanvasItem.i */
%module mCanvasItem

%typemap(csbody_derived) CanvasItem %{
  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal $csclassname(global::System.IntPtr cPtr, bool cMemoryOwn) : base($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  new internal void internal_init(global::System.IntPtr cPtr, bool cMemoryOwn) {
    base.internal_init($imclassname.$csclazznameSWIGUpcast(cPtr), cMemoryOwn);
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr($csclassname obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }
%}

%typemap(cscode) CanvasItem %{  
  internal $csclassname() {}
%}

%nodefaultctor;
%nodefaultdtor;

class CanvasItem : public Node {
};

