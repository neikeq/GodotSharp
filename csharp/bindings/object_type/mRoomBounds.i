/* mRoomBounds.i */
%module mRoomBounds


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

};
