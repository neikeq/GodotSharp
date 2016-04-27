/* mSprite.i */
%module mSprite

%typemap(csbody_derived) Sprite %{
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

%typemap(csconstruct, excode=SWIGEXCODE) Sprite %{{
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall, false);
    }$excode
  }
%}

class Sprite : public Node2D {
public:
  Sprite();
  ~Sprite();
};
