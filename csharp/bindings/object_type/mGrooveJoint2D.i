/* mGrooveJoint2D.i */
%module mGrooveJoint2D


%typemap(csbody_derived) GrooveJoint2D %{

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

%typemap(cscode) GrooveJoint2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GrooveJoint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GrooveJoint2D;

class GrooveJoint2D : public Joint2D {
public:
  %extend {
    void set_length(float length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_length", length);
    }
  }
  %extend {
    float get_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_length");
    }
  }
  %extend {
    void set_initial_offset(float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_initial_offset", offset);
    }
  }
  %extend {
    float get_initial_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_initial_offset");
    }
  }
  GrooveJoint2D();

};
