/* mSlider.i */
%module mSlider

%nodefaultctor Slider;

%typemap(csbody_derived) Slider %{

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

%typemap(cscode) Slider %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Slider %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Slider;

class Slider : public Range {
public:
  %extend {
    void set_ticks(int count) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ticks", count);
    }
  }
  %extend {
    int get_ticks() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ticks");
    }
  }
  %extend {
    bool get_ticks_on_borders() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_ticks_on_borders");
    }
  }
  %extend {
    void set_ticks_on_borders(bool ticks_on_border) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ticks_on_borders", ticks_on_border);
    }
  }

};
