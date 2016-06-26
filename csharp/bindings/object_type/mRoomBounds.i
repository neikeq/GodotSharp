/* mRoomBounds.i */
%module mRoomBounds

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
  RoomBounds();

%extend {

void set_bounds(const Dictionary& bsp_tree) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "set_bounds");
  const void* __args[1] = { &bsp_tree };
  __method_bind->ptrcall($self, __args, NULL);
}

Dictionary get_bounds() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "get_bounds");
  Dictionary ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_geometry_hint(const Vector3Array& triangles) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "set_geometry_hint");
  const void* __args[1] = { &triangles };
  __method_bind->ptrcall($self, __args, NULL);
}

Vector3Array get_geometry_hint() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "get_geometry_hint");
  Vector3Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void regenerate_bsp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "regenerate_bsp");
  __method_bind->ptrcall($self, NULL, NULL);
}

void regenerate_bsp_cubic() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("RoomBounds", "regenerate_bsp_cubic");
  __method_bind->ptrcall($self, NULL, NULL);
}

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
