/* mBakedLightInstance.i */
%module mBakedLightInstance


%typemap(csbody_derived) BakedLightInstance %{

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

%typemap(cscode) BakedLightInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BakedLightInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor BakedLightInstance;

class BakedLightInstance : public VisualInstance {
public:
  %extend {
    void set_baked_light(Object* baked_light) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_baked_light", baked_light);
    }
  }
  %extend {
    Object* get_baked_light() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_baked_light").operator Object *();
    }
  }
  %extend {
    RID get_baked_light_instance() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_baked_light_instance");
    }
  }
  BakedLightInstance();

};
