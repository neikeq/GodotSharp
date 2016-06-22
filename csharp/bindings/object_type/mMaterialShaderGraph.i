/* mMaterialShaderGraph.i */
%module mMaterialShaderGraph

%typemap(ctype, out="MaterialShaderGraph*") Ref<MaterialShaderGraph> "MaterialShaderGraph*"
%typemap(out, null="NULL") Ref<MaterialShaderGraph> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<MaterialShaderGraph> "MaterialShaderGraph.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MaterialShaderGraph> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MaterialShaderGraph> "MaterialShaderGraph"
%typemap(csout, excode=SWIGEXCODE) Ref<MaterialShaderGraph> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MaterialShaderGraph ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MaterialShaderGraph;$excode
    return ret;
}

template<class MaterialShaderGraph> class Ref;%template() Ref<MaterialShaderGraph>;
%feature("novaluewrapper") Ref<MaterialShaderGraph>;


%typemap(csbody_derived) MaterialShaderGraph %{

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

%typemap(cscode) MaterialShaderGraph %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MaterialShaderGraph %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor MaterialShaderGraph;

class MaterialShaderGraph : public ShaderGraph {
public:
  MaterialShaderGraph();
  %extend {
    ~MaterialShaderGraph() {
      if ($self->get_script_instance()) {
        CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
        if (cs_instance) {
          cs_instance->mono_object_disposed();
          return;
        }
      }
      if ($self->unreference()) {
        memdelete($self);
      }
    }
  }


};
