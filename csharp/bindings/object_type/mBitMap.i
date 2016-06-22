/* mBitMap.i */
%module mBitMap

%typemap(ctype, out="BitMap*") Ref<BitMap> "BitMap*"
%typemap(out, null="NULL") Ref<BitMap> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<BitMap> "BitMap.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BitMap> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BitMap> "BitMap"
%typemap(csout, excode=SWIGEXCODE) Ref<BitMap> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BitMap ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BitMap;$excode
    return ret;
}

template<class BitMap> class Ref;%template() Ref<BitMap>;
%feature("novaluewrapper") Ref<BitMap>;


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
  %extend {
    ~BitMap() {
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
