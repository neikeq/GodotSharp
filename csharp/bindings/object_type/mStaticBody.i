/* mStaticBody.i */
%module mStaticBody

%typemap(out) StaticBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) StaticBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) StaticBody %{

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

%typemap(cscode) StaticBody %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StaticBody %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StaticBody;

class StaticBody : public PhysicsBody {
public:
  %extend {
    void set_constant_linear_velocity(const Vector3& vel) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_constant_linear_velocity", vel);
    }
  }
  %extend {
    void set_constant_angular_velocity(const Vector3& vel) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_constant_angular_velocity", vel);
    }
  }
  %extend {
    Vector3 get_constant_linear_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_constant_linear_velocity");
    }
  }
  %extend {
    Vector3 get_constant_angular_velocity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_constant_angular_velocity");
    }
  }
  %extend {
    void set_friction(float friction) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_friction", friction);
    }
  }
  %extend {
    float get_friction() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_friction");
    }
  }
  %extend {
    void set_bounce(float bounce) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bounce", bounce);
    }
  }
  %extend {
    float get_bounce() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bounce");
    }
  }
  StaticBody();

};
