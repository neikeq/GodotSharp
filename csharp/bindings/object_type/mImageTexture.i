/* mImageTexture.i */
%module mImageTexture


%typemap(csbody_derived) ImageTexture %{
  public static readonly int STORAGE_RAW = 0;
  public static readonly int STORAGE_COMPRESS_LOSSY = 1;
  public static readonly int STORAGE_COMPRESS_LOSSLESS = 2;

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

%typemap(cscode) ImageTexture %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ImageTexture %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor ImageTexture;

class ImageTexture : public Texture {
public:
  %extend {
    void create(int width, int height, int format, int flags = 7) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create", width, height, format, flags);
    }
  }
  %extend {
    void create_from_image(const Image& image, int flags = 7) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_from_image", image, flags);
    }
  }
  %extend {
    int get_format() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_format");
    }
  }
  %extend {
    void load(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("load", path);
    }
  }
  %extend {
    void set_data(const Image& image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_data", image);
    }
  }
  %extend {
    Image get_data() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_data");
    }
  }
  %extend {
    void set_storage(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_storage", mode);
    }
  }
  %extend {
    int get_storage() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_storage");
    }
  }
  %extend {
    void set_lossy_storage_quality(float quality) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_lossy_storage_quality", quality);
    }
  }
  %extend {
    float get_lossy_storage_quality() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_lossy_storage_quality");
    }
  }
  %extend {
    void fix_alpha_edges() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("fix_alpha_edges");
    }
  }
  %extend {
    void premultiply_alpha() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("premultiply_alpha");
    }
  }
  %extend {
    void normal_to_xy() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("normal_to_xy");
    }
  }
  %extend {
    void shrink_x2_and_keep_size() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("shrink_x2_and_keep_size");
    }
  }
  %extend {
    void set_size_override(const Vector2& size) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_size_override", size);
    }
  }
  ImageTexture();

};
