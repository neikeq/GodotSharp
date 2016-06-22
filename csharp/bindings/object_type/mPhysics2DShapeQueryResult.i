/* mPhysics2DShapeQueryResult.i */
%module mPhysics2DShapeQueryResult

%nodefaultctor Physics2DShapeQueryResult;
%typemap(ctype, out="Physics2DShapeQueryResult*") Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult*"
%typemap(out, null="NULL") Ref<Physics2DShapeQueryResult> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DShapeQueryResult> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DShapeQueryResult> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DShapeQueryResult ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DShapeQueryResult;$excode
    return ret;
}

template<class Physics2DShapeQueryResult> class Ref;%template() Ref<Physics2DShapeQueryResult>;
%feature("novaluewrapper") Ref<Physics2DShapeQueryResult>;


%typemap(csbody_derived) Physics2DShapeQueryResult %{

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

%typemap(cscode) Physics2DShapeQueryResult %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Physics2DShapeQueryResult %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Physics2DShapeQueryResult;

class Physics2DShapeQueryResult : public Reference {
public:
  %extend {
    int get_result_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_result_count");
    }
  }
  %extend {
    RID get_result_rid(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_result_rid", idx);
    }
  }
  %extend {
    int get_result_object_id(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_result_object_id", idx);
    }
  }
  %extend {
    Object* get_result_object(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_result_object", idx).operator Object *();
    }
  }
  %extend {
    int get_result_object_shape(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_result_object_shape", idx);
    }
  }
  %extend {
    ~Physics2DShapeQueryResult() {
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
