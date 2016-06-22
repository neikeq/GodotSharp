/* mOccluderPolygon2D.i */
%module mOccluderPolygon2D

%typemap(ctype, out="OccluderPolygon2D*") Ref<OccluderPolygon2D> "OccluderPolygon2D*"
%typemap(out, null="NULL") Ref<OccluderPolygon2D> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<OccluderPolygon2D> "OccluderPolygon2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<OccluderPolygon2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<OccluderPolygon2D> "OccluderPolygon2D"
%typemap(csout, excode=SWIGEXCODE) Ref<OccluderPolygon2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    OccluderPolygon2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as OccluderPolygon2D;$excode
    return ret;
}

template<class OccluderPolygon2D> class Ref;%template() Ref<OccluderPolygon2D>;
%feature("novaluewrapper") Ref<OccluderPolygon2D>;


%typemap(csbody_derived) OccluderPolygon2D %{
  public static readonly int CULL_DISABLED = 0;
  public static readonly int CULL_CLOCKWISE = 1;
  public static readonly int CULL_COUNTER_CLOCKWISE = 2;

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

%typemap(cscode) OccluderPolygon2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) OccluderPolygon2D %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor OccluderPolygon2D;

class OccluderPolygon2D : public Resource {
public:
  %extend {
    void set_closed(bool closed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_closed", closed);
    }
  }
  %extend {
    bool is_closed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_closed");
    }
  }
  %extend {
    void set_cull_mode(int cull_mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_cull_mode", cull_mode);
    }
  }
  %extend {
    int get_cull_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_cull_mode");
    }
  }
  %extend {
    void set_polygon(const Vector2Array& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_polygon", polygon);
    }
  }
  %extend {
    Vector2Array get_polygon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon");
    }
  }
  OccluderPolygon2D();
  %extend {
    ~OccluderPolygon2D() {
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
