/* mRoomBounds.i */
%module mRoomBounds

%typemap(ctype, out="RoomBounds*") Ref<RoomBounds> "RoomBounds*"
%typemap(out, null="NULL") Ref<RoomBounds> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<RoomBounds> "RoomBounds.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RoomBounds> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RoomBounds> "RoomBounds"
%typemap(csout, excode=SWIGEXCODE) Ref<RoomBounds> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RoomBounds ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RoomBounds;$excode
    return ret;
}

template<class RoomBounds> class Ref;%template() Ref<RoomBounds>;
%feature("novaluewrapper") Ref<RoomBounds>;


%typemap(csbody_derived) RoomBounds %{

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

%typemap(cscode) RoomBounds %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) RoomBounds %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor RoomBounds;

class RoomBounds : public Resource {
public:
  %extend {
    void set_bounds(const Dictionary& bsp_tree) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bounds", bsp_tree);
    }
  }
  %extend {
    Dictionary get_bounds() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bounds");
    }
  }
  %extend {
    void set_geometry_hint(const Vector3Array& triangles) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_geometry_hint", triangles);
    }
  }
  %extend {
    Vector3Array get_geometry_hint() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_geometry_hint");
    }
  }
  %extend {
    void regenerate_bsp() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("regenerate_bsp");
    }
  }
  %extend {
    void regenerate_bsp_cubic() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("regenerate_bsp_cubic");
    }
  }
  RoomBounds();
  %extend {
    ~RoomBounds() {
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
