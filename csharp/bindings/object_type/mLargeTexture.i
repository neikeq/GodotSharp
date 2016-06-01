/* mLargeTexture.i */
%module mLargeTexture


%typemap(csbody_derived) LargeTexture %{

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

%typemap(cscode) LargeTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) LargeTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor LargeTexture;

class LargeTexture : public Texture {
public:
  %extend {
    int add_piece(const Vector2& ofs, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("add_piece", ofs, texture);
    }
  }
  %extend {
    void set_piece_offset(int idx, const Vector2& ofs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_piece_offset", idx, ofs);
    }
  }
  %extend {
    void set_piece_texture(int idx, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_piece_texture", idx, texture);
    }
  }
  %extend {
    void set_size(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size", size);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    int get_piece_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_piece_count");
    }
  }
  %extend {
    Vector2 get_piece_offset(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_piece_offset", idx);
    }
  }
  %extend {
    Ref<Texture> get_piece_texture(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_piece_texture", idx).operator Object *()->cast_to<Texture>();
    }
  }
  LargeTexture();

};
