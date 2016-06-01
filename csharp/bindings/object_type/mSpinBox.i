/* mSpinBox.i */
%module mSpinBox


%typemap(csbody_derived) SpinBox %{

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

%typemap(cscode) SpinBox %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpinBox %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpinBox;

class SpinBox : public Range {
public:
  %extend {
    void set_suffix(const String& suffix) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_suffix", suffix);
    }
  }
  %extend {
    String get_suffix() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_suffix");
    }
  }
  %extend {
    void set_prefix(const String& prefix) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_prefix", prefix);
    }
  }
  %extend {
    String get_prefix() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_prefix");
    }
  }
  %extend {
    void set_editable(bool editable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_editable", editable);
    }
  }
  %extend {
    bool is_editable() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_editable");
    }
  }
  %extend {
    Object* get_line_edit() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line_edit").operator Object *();
    }
  }
  SpinBox();

};
