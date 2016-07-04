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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorSelection;

class EditorSelection : public Object {
public:
  EditorSelection();

%extend {

void clear() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSelection", "clear");
  __method_bind->ptrcall($self, NULL, NULL);
}

void add_node(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSelection", "add_node");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_node(Node* node) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSelection", "remove_node");
  const void* __args[1] = { node };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_selected_nodes() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("EditorSelection", "get_selected_nodes");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
