/* mNode2D.i */
%module mNode2D

%typemap(csbody_derived) Node2D %{
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

%typemap(csconstruct, excode=SWIGEXCODE) Node2D %{{
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall, false);
    }$excode
  }
%}

class Node2D : public CanvasItem {
public:
  void translate(const Vector2& p_amount);
  Node2D();
  ~Node2D();
};
