/* mScrollContainer.i */
%module mScrollContainer

%typemap(out) ScrollContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ScrollContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ScrollContainer %{

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

%typemap(cscode) ScrollContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ScrollContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ScrollContainer;

class ScrollContainer : public Container {
public:
  %extend {
    void set_enable_h_scroll(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enable_h_scroll", enable);
    }
  }
  %extend {
    bool is_h_scroll_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_h_scroll_enabled");
    }
  }
  %extend {
    void set_enable_v_scroll(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enable_v_scroll", enable);
    }
  }
  %extend {
    bool is_v_scroll_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_v_scroll_enabled");
    }
  }
  %extend {
    void set_h_scroll(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_h_scroll", val);
    }
  }
  %extend {
    int get_h_scroll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_h_scroll");
    }
  }
  %extend {
    void set_v_scroll(int val) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_v_scroll", val);
    }
  }
  %extend {
    int get_v_scroll() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_v_scroll");
    }
  }
  ScrollContainer();

};
