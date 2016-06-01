/* mInverseKinematics.i */
%module mInverseKinematics


%typemap(csbody_derived) InverseKinematics %{

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

%typemap(cscode) InverseKinematics %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) InverseKinematics %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor InverseKinematics;

class InverseKinematics : public Spatial {
public:
  %extend {
    void set_bone_name(const String& ik_bone) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bone_name", ik_bone);
    }
  }
  %extend {
    String get_bone_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bone_name");
    }
  }
  %extend {
    void set_iterations(int iterations) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_iterations", iterations);
    }
  }
  %extend {
    int get_iterations() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_iterations");
    }
  }
  %extend {
    void set_chain_size(int chain_size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_chain_size", chain_size);
    }
  }
  %extend {
    int get_chain_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_chain_size");
    }
  }
  %extend {
    void set_precision(float precision) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_precision", precision);
    }
  }
  %extend {
    float get_precision() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_precision");
    }
  }
  %extend {
    void set_speed(float speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_speed", speed);
    }
  }
  %extend {
    float get_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_speed");
    }
  }
  InverseKinematics();

};
