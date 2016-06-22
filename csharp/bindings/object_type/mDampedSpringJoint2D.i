/* mDampedSpringJoint2D.i */
%module mDampedSpringJoint2D

%typemap(out) DampedSpringJoint2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) DampedSpringJoint2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) DampedSpringJoint2D %{

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

%typemap(cscode) DampedSpringJoint2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) DampedSpringJoint2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor DampedSpringJoint2D;

class DampedSpringJoint2D : public Joint2D {
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
    void set_rest_length(float rest_length) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rest_length", rest_length);
    }
  }
  %extend {
    float get_rest_length() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rest_length");
    }
  }
  %extend {
    void set_stiffness(float stiffness) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stiffness", stiffness);
    }
  }
  %extend {
    float get_stiffness() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stiffness");
    }
  }
  %extend {
    void set_damping(float damping) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_damping", damping);
    }
  }
  %extend {
    float get_damping() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_damping");
    }
  }
  DampedSpringJoint2D();

};
