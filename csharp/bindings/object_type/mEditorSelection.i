/* mEditorSelection.i */
%module mEditorSelection


%typemap(csbody_derived) EditorSelection %{

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

%typemap(cscode) EditorSelection %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorSelection %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor EditorSelection;

class EditorSelection : public Object {
public:
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void add_node(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_node", node);
    }
  }
  %extend {
    void remove_node(Node* node) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_node", node);
    }
  }
  %extend {
    Array get_selected_nodes() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected_nodes");
    }
  }
  EditorSelection();

};
