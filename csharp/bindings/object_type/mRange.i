/* mRange.i */
%module mRange

%typemap(out) Range "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Range* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Range %{

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

%typemap(cscode) Range %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Range %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Range;

class Range : public Control {
public:
  %extend {
    float get_val() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_val");
    }
  }
  %extend {
    float get_value() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_value");
    }
  }
  %extend {
    float get_min() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_min");
    }
  }
  %extend {
    float get_max() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_max");
    }
  }
  %extend {
    float get_step() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_step");
    }
  }
  %extend {
    float get_page() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_page");
    }
  }
  %extend {
    float get_unit_value() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_unit_value");
    }
  }
  %extend {
    void set_val(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_val", value);
    }
  }
  %extend {
    void set_value(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_value", value);
    }
  }
  %extend {
    void set_min(float minimum) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_min", minimum);
    }
  }
  %extend {
    void set_max(float maximum) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_max", maximum);
    }
  }
  %extend {
    void set_step(float step) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_step", step);
    }
  }
  %extend {
    void set_page(float pagesize) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_page", pagesize);
    }
  }
  %extend {
    void set_unit_value(float value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_unit_value", value);
    }
  }
  %extend {
    void set_rounded_values(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_rounded_values", enabled);
    }
  }
  %extend {
    bool is_rounded_values() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_rounded_values");
    }
  }
  %extend {
    void set_exp_unit_value(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_exp_unit_value", enabled);
    }
  }
  %extend {
    bool is_unit_value_exp() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_unit_value_exp");
    }
  }
  %extend {
    void share(Object* with) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("share", with);
    }
  }
  %extend {
    void unshare() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("unshare");
    }
  }
  Range();

};
