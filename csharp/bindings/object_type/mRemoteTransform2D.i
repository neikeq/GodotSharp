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
    }$excode
  }
%}

%nodefaultdtor RemoteTransform2D;

class RemoteTransform2D : public Node2D {
public:
  %extend {
    void set_remote_node(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_remote_node", path);
    }
  }
  %extend {
    NodePath get_remote_node() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_remote_node");
    }
  }
  RemoteTransform2D();

};
