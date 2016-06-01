/* mEditorScript.i */
%module mEditorScript


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

};
