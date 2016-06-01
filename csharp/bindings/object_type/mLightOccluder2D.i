/* mLightOccluder2D.i */
%module mLightOccluder2D


%typemap(csbody_derived) LightOccluder2D %{

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

%typemap(cscode) LightOccluder2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LightOccluder2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor LightOccluder2D;

class LightOccluder2D : public Node2D {
public:
  %extend {
    void set_occluder_polygon(Ref<OccluderPolygon2D> polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_occluder_polygon", polygon);
    }
  }
  %extend {
    Ref<OccluderPolygon2D> get_occluder_polygon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_occluder_polygon").operator Object *()->cast_to<OccluderPolygon2D>();
    }
  }
  %extend {
    void set_occluder_light_mask(int mask) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_occluder_light_mask", mask);
    }
  }
  %extend {
    int get_occluder_light_mask() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_occluder_light_mask");
    }
  }
  LightOccluder2D();

};
