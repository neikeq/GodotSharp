/* mCapsuleShape.i */
%module mCapsuleShape

%typemap(ctype, out="CapsuleShape*") Ref<CapsuleShape> "CapsuleShape*"
%typemap(out, null="NULL") Ref<CapsuleShape> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<CapsuleShape> "CapsuleShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CapsuleShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CapsuleShape> "CapsuleShape"
%typemap(csout, excode=SWIGEXCODE) Ref<CapsuleShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CapsuleShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CapsuleShape;$excode
    return ret;
}

template<class CapsuleShape> class Ref;%template() Ref<CapsuleShape>;
%feature("novaluewrapper") Ref<CapsuleShape>;


%typemap(csbody_derived) CapsuleShape %{

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

%typemap(cscode) CapsuleShape %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CapsuleShape %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CapsuleShape;

class CapsuleShape : public Shape {
public:
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
    void set_height(float height) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_height", height);
    }
  }
  %extend {
    float get_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_height");
    }
  }
  CapsuleShape();
  %extend {
    ~CapsuleShape() {
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
