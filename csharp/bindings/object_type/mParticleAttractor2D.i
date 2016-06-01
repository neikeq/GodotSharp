/* mParticleAttractor2D.i */
%module mParticleAttractor2D


%typemap(csbody_derived) ParticleAttractor2D %{

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

%typemap(cscode) ParticleAttractor2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ParticleAttractor2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ParticleAttractor2D;

class ParticleAttractor2D : public Node2D {
public:
  %extend {
    void set_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled", enabled);
    }
  }
  %extend {
    bool is_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabled");
    }
  }
  %extend {
    void set_radius(float radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radius", radius);
    }
  }
  %extend {
    float get_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radius");
    }
  }
  %extend {
    void set_disable_radius(float radius) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_disable_radius", radius);
    }
  }
  %extend {
    float get_disable_radius() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_disable_radius");
    }
  }
  %extend {
    void set_gravity(float gravity) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_gravity", gravity);
    }
  }
  %extend {
    float get_gravity() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_gravity");
    }
  }
  %extend {
    void set_absorption(float absorption) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_absorption", absorption);
    }
  }
  %extend {
    float get_absorption() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_absorption");
    }
  }
  %extend {
    void set_particles_path(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_particles_path", path);
    }
  }
  %extend {
    NodePath get_particles_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_particles_path");
    }
  }
  ParticleAttractor2D();

};
