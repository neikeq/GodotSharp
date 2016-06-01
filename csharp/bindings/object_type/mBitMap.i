/* mBitMap.i */
%module mBitMap


%typemap(csbody_derived) BitMap %{

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

%typemap(cscode) BitMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BitMap %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BitMap;

class BitMap : public Resource {
public:
  %extend {
    void create(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create", size);
    }
  }
  %extend {
    void create_from_image_alpha(const Image& image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_from_image_alpha", image);
    }
  }
  %extend {
    void set_bit(const Vector2& pos, bool bit) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bit", pos, bit);
    }
  }
  %extend {
    bool get_bit(const Vector2& pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_bit", pos);
    }
  }
  %extend {
    void set_bit_rect(const Rect2& p_rect, bool bit) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_bit_rect", p_rect, bit);
    }
  }
  %extend {
    int get_true_bit_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_true_bit_count");
    }
  }
  %extend {
    Vector2 get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  BitMap();

};
