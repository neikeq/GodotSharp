/* mNavigationMesh.i */
%module mNavigationMesh

%typemap(ctype, out="NavigationMesh*") Ref<NavigationMesh> "NavigationMesh*"
%typemap(out, null="NULL") Ref<NavigationMesh> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<NavigationMesh> "NavigationMesh.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<NavigationMesh> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<NavigationMesh> "NavigationMesh"
%typemap(csout, excode=SWIGEXCODE) Ref<NavigationMesh> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    NavigationMesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as NavigationMesh;$excode
    return ret;
}

template<class NavigationMesh> class Ref;%template() Ref<NavigationMesh>;
%feature("novaluewrapper") Ref<NavigationMesh>;


%typemap(csbody_derived) NavigationMesh %{

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

%typemap(cscode) NavigationMesh %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationMesh %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor NavigationMesh;

class NavigationMesh : public Resource {
public:
  %extend {
    void set_vertices(const Vector3Array& vertices) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_vertices", vertices);
    }
  }
  %extend {
    Vector3Array get_vertices() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vertices");
    }
  }
  %extend {
    void add_polygon(const IntArray& polygon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_polygon", polygon);
    }
  }
  %extend {
    int get_polygon_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon_count");
    }
  }
  %extend {
    IntArray get_polygon(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_polygon", idx);
    }
  }
  %extend {
    void clear_polygons() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_polygons");
    }
  }
  NavigationMesh();
  %extend {
    ~NavigationMesh() {
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
