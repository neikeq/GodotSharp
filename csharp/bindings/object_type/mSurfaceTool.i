/* mSurfaceTool.i */
%module mSurfaceTool

%typemap(ctype, out="SurfaceTool*") Ref<SurfaceTool> "SurfaceTool*"
%typemap(out, null="NULL") Ref<SurfaceTool> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<SurfaceTool> "SurfaceTool.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SurfaceTool> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SurfaceTool> "SurfaceTool"
%typemap(csout, excode=SWIGEXCODE) Ref<SurfaceTool> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SurfaceTool ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SurfaceTool;$excode
    return ret;
}

template<class SurfaceTool> class Ref;%template() Ref<SurfaceTool>;
%feature("novaluewrapper") Ref<SurfaceTool>;


%typemap(csbody_derived) SurfaceTool %{

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

%typemap(cscode) SurfaceTool %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SurfaceTool %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SurfaceTool;

class SurfaceTool : public Reference {
public:
  %extend {
    void begin(int primitive) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("begin", primitive);
    }
  }
  %extend {
    void add_vertex(const Vector3& vertex) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_vertex", vertex);
    }
  }
  %extend {
    void add_color(const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_color", color);
    }
  }
  %extend {
    void add_normal(const Vector3& normal) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_normal", normal);
    }
  }
  %extend {
    void add_tangent(const Plane& tangent) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_tangent", tangent);
    }
  }
  %extend {
    void add_uv(const Vector2& uv) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_uv", uv);
    }
  }
  %extend {
    void add_uv2(const Vector2& uv2) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_uv2", uv2);
    }
  }
  %extend {
    void add_bones(const IntArray& bones) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_bones", bones);
    }
  }
  %extend {
    void add_weights(const RealArray& weights) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_weights", weights);
    }
  }
  %extend {
    void add_smooth_group(bool smooth) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_smooth_group", smooth);
    }
  }
  %extend {
    void add_triangle_fan(const Vector3Array& vertexes, const Vector2Array& uvs = Vector2Array(), const ColorArray& colors = ColorArray(), const Vector2Array& uv2s = Vector2Array(), const Vector3Array& normals = Vector3Array(), const Array& tangents = Array()) {
  Variant::CallError err;
Variant arg_0_ = Variant(vertexes);
Variant arg_1_ = Variant(uvs);
Variant arg_2_ = Variant(colors);
Variant arg_3_ = Variant(uv2s);
Variant arg_4_ = Variant(normals);
Variant arg_5_ = Variant(tangents);
Variant *args_[6] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_ };
$self->call("add_triangle_fan", (const Variant **) args_, 6, err);
    }
  }
  %extend {
    void set_material(Ref<Material> material) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_material", material);
    }
  }
  %extend {
    void index() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("index");
    }
  }
  %extend {
    void deindex() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("deindex");
    }
  }
  %extend {
    void generate_normals() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("generate_normals");
    }
  }
  %extend {
    Ref<Mesh> commit(Ref<Mesh> existing = Ref<Mesh>()) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("commit", existing).operator Object *()->cast_to<Mesh>();
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  SurfaceTool();
  %extend {
    ~SurfaceTool() {
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
