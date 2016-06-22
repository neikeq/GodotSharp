/* mTexture.i */
%module mTexture

%nodefaultctor Texture;
%typemap(ctype, out="Texture*") Ref<Texture> "Texture*"
%typemap(out, null="NULL") Ref<Texture> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Texture> "Texture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Texture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Texture> "Texture"
%typemap(csout, excode=SWIGEXCODE) Ref<Texture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Texture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Texture;$excode
    return ret;
}

template<class Texture> class Ref;%template() Ref<Texture>;
%feature("novaluewrapper") Ref<Texture>;


%typemap(csbody_derived) Texture %{
  public static readonly int FLAG_MIPMAPS = 1;
  public static readonly int FLAG_REPEAT = 2;
  public static readonly int FLAG_FILTER = 4;
  public static readonly int FLAG_VIDEO_SURFACE = 4096;
  public static readonly int FLAGS_DEFAULT = 7;
  public static readonly int FLAG_ANISOTROPIC_FILTER = 8;
  public static readonly int FLAG_CONVERT_TO_LINEAR = 16;
  public static readonly int FLAG_MIRRORED_REPEAT = 32;

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

%typemap(cscode) Texture %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Texture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Texture;

class Texture : public Resource {
public:
  %extend {
    int get_width() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_width");
    }
  }
  %extend {
    int get_height() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_height");
    }
  }
  %extend {
    Vector2 get_size() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_size");
    }
  }
  %extend {
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
    }
  }
  %extend {
    bool has_alpha() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_alpha");
    }
  }
  %extend {
    void set_flags(int flags) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flags", flags);
    }
  }
  %extend {
    int get_flags() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flags");
    }
  }
  %extend {
    void draw(const RID& canvas_item, const Vector2& pos, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw", canvas_item, pos, modulate, transpose);
    }
  }
  %extend {
    void draw_rect(const RID& canvas_item, const Rect2& rect, bool tile, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_rect", canvas_item, rect, tile, modulate, transpose);
    }
  }
  %extend {
    void draw_rect_region(const RID& canvas_item, const Rect2& rect, const Rect2& src_rect, const Color& modulate = Color(1,1,1,1), bool transpose = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("draw_rect_region", canvas_item, rect, src_rect, modulate, transpose);
    }
  }
  %extend {
    ~Texture() {
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
