/* mBoneAttachment.i */
%module mBoneAttachment

%typemap(out) BoneAttachment "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BoneAttachment* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) BoneAttachment %{

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

%typemap(cscode) BoneAttachment %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BoneAttachment %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BoneAttachment;

class BoneAttachment : public Spatial {
public:
  BoneAttachment();

};