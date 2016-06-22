/* mPhysics2DShapeQueryParameters.i */
%module mPhysics2DShapeQueryParameters

%typemap(ctype, out="Physics2DShapeQueryParameters*") Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters*"
%typemap(out, null="NULL") Ref<Physics2DShapeQueryParameters> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DShapeQueryParameters> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DShapeQueryParameters> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DShapeQueryParameters ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DShapeQueryParameters;$excode
    return ret;
}

template<class Physics2DShapeQueryParameters> class Ref;%template() Ref<Physics2DShapeQueryParameters>;
%feature("novaluewrapper") Ref<Physics2DShapeQueryParameters>;


%typemap(csbody_derived) Physics2DShapeQueryParameters %{

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

%typemap(cscode) Physics2DShapeQueryParameters %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DShapeQueryParameters %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DShapeQueryParameters;

class Physics2DShapeQueryParameters : public Reference {
public:
  %extend {
    void set_shape(Ref<Shape2D> shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape", shape);
    }
  }
  %extend {
    void set_shape_rid(const RID& shape) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_shape_rid", shape);
    }
  }
  %extend {
    RID get_shape_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_shape_rid");
    }
  }
  %extend {
    void set_transform(const Matrix32& transform) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_transform", transform);
    }
  }
  %extend {
    Matrix32 get_transform() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_transform");
    }
  }
  %extend {
    void set_motion(const Vector2& motion) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_motion", motion);
    }
  }
  %extend {
    Vector2 get_motion() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_motion");
    }
  }
  %extend {
    void set_margin(float margin) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_margin", margin);
    }
  }
  %extend {
    float get_margin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_margin");
    }
  }
  %extend {
    void set_layer_mask(int layer_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_layer_mask", layer_mask);
    }
  }
  %extend {
    int get_layer_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_layer_mask");
    }
  }
  %extend {
    void set_object_type_mask(int object_type_mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_object_type_mask", object_type_mask);
    }
  }
  %extend {
    int get_object_type_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_object_type_mask");
    }
  }
  %extend {
    void set_exclude(const Array& exclude) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_exclude", exclude);
    }
  }
  %extend {
    Array get_exclude() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_exclude");
    }
  }
  Physics2DShapeQueryParameters();
  %extend {
    ~Physics2DShapeQueryParameters() {
      if ($self->get_script_instance()) {
        CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
        if (cs_instance) {
          cs_instance->mono_object_disposed();
          return;
        }
      }
      if ($self->unreference()) {
        memdelete($self);
      }
    }
  }


};
