/* mProximityGroup.i */
%module mProximityGroup

%typemap(out) ProximityGroup "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ProximityGroup* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ProximityGroup %{

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

%typemap(cscode) ProximityGroup %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ProximityGroup %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ProximityGroup;

class ProximityGroup : public Spatial {
public:
  %extend {
    void set_group_name(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_group_name", name);
    }
  }
  %extend {
    void broadcast(const String& name, const Variant& parameters) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("broadcast", name, parameters);
    }
  }
  %extend {
    void set_dispatch_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_dispatch_mode", mode);
    }
  }
  %extend {
    void set_grid_radius(const Vector3& radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_grid_radius", radius);
    }
  }
  %extend {
    Vector3 get_grid_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_grid_radius");
    }
  }
  ProximityGroup();

};
