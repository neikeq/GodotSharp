/* mStyleBoxImageMask.i */
%module mStyleBoxImageMask


%typemap(csbody_derived) StyleBoxImageMask %{

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

%typemap(cscode) StyleBoxImageMask %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) StyleBoxImageMask %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor StyleBoxImageMask;

class StyleBoxImageMask : public StyleBox {
public:
  %extend {
    void set_image(const Image& image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_image", image);
    }
  }
  %extend {
    Image get_image() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_image");
    }
  }
  %extend {
    void set_expand(bool expand) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand", expand);
    }
  }
  %extend {
    bool get_expand() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_expand");
    }
  }
  %extend {
    void set_expand_margin_size(int margin, float size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_expand_margin_size", margin, size);
    }
  }
  %extend {
    float get_expand_margin_size(int margin) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_expand_margin_size", margin);
    }
  }
  StyleBoxImageMask();

};
