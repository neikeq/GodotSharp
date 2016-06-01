/* mSplitContainer.i */
%module mSplitContainer

%nodefaultctor SplitContainer;

%typemap(csbody_derived) SplitContainer %{
  public static readonly int DRAGGER_VISIBLE = 0;
  public static readonly int DRAGGER_HIDDEN = 1;
  public static readonly int DRAGGER_HIDDEN_COLLAPSED = 2;

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

%typemap(cscode) SplitContainer %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) SplitContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SplitContainer;

class SplitContainer : public Container {
public:
  %extend {
    void set_split_offset(int offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_split_offset", offset);
    }
  }
  %extend {
    int get_split_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_split_offset");
    }
  }
  %extend {
    void set_collapsed(bool collapsed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_collapsed", collapsed);
    }
  }
  %extend {
    bool is_collapsed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_collapsed");
    }
  }
  %extend {
    void set_dragger_visibility(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_dragger_visibility", mode);
    }
  }
  %extend {
    int get_dragger_visibility() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_dragger_visibility");
    }
  }

};
