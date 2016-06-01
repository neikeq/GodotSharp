/* mShape2D.i */
%module mShape2D

%nodefaultctor Shape2D;

%typemap(csbody_derived) Shape2D %{

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

%typemap(cscode) Shape2D %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Shape2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Shape2D;

class Shape2D : public Resource {
public:
  %extend {
    void set_custom_solver_bias(float bias) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_custom_solver_bias", bias);
    }
  }
  %extend {
    float get_custom_solver_bias() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_custom_solver_bias");
    }
  }
  %extend {
    bool collide(const Matrix32& local_xform, Ref<Shape2D> with_shape, const Matrix32& shape_xform) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide", local_xform, with_shape, shape_xform);
    }
  }
  %extend {
    bool collide_with_motion(const Matrix32& local_xform, const Vector2& local_motion, Ref<Shape2D> with_shape, const Matrix32& shape_xform, const Vector2& shape_motion) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide_with_motion", local_xform, local_motion, with_shape, shape_xform, shape_motion);
    }
  }
  %extend {
    Variant collide_and_get_contacts(const Matrix32& local_xform, Ref<Shape2D> with_shape, const Matrix32& shape_xform) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide_and_get_contacts", local_xform, with_shape, shape_xform);
    }
  }
  %extend {
    Variant collide_with_motion_and_get_contacts(const Matrix32& local_xform, const Vector2& local_motion, Ref<Shape2D> with_shape, const Matrix32& shape_xform, const Vector2& shape_motion) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("collide_with_motion_and_get_contacts", local_xform, local_motion, with_shape, shape_xform, shape_motion);
    }
  }

};
