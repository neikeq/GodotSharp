/* mRemoteTransform2D.i */
%module mRemoteTransform2D


%typemap(csbody_derived) RemoteTransform2D %{

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

%typemap(cscode) RemoteTransform2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RemoteTransform2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RemoteTransform2D;

class RemoteTransform2D : public Node2D {
public:
  RemoteTransform2D();

%extend {

void set_remote_node(const NodePath& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RemoteTransform2D", "set_remote_node");
  const void* __args[1] = { &path };
  __method_bind->ptrcall($self, __args, NULL);
}

NodePath get_remote_node() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RemoteTransform2D", "get_remote_node");
  NodePath ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
