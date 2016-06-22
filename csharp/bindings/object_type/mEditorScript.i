/* mEditorScript.i */
%module mEditorScript

%typemap(ctype, out="EditorScript*") Ref<EditorScript> "EditorScript*"
%typemap(out, null="NULL") Ref<EditorScript> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EditorScript> "EditorScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorScript> "EditorScript"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorScript;$excode
    return ret;
}

template<class EditorScript> class Ref;%template() Ref<EditorScript>;
%feature("novaluewrapper") Ref<EditorScript>;


%typemap(csbody_derived) EditorScript %{

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

%typemap(cscode) EditorScript %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorScript %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorScript;

class EditorScript : public Reference {
public:
  %extend {
    void _run() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_run");
    }
  }
  %extend {
    void add_root_node(Object* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_root_node", node);
    }
  }
  %extend {
    Object* get_scene() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scene").operator Object *();
    }
  }
  EditorScript();
  %extend {
    ~EditorScript() {
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
