/* mCubeMap.i */
%module mCubeMap


%typemap(csbody_derived) CubeMap %{
  public static readonly int STORAGE_RAW = 0;
  public static readonly int STORAGE_COMPRESS_LOSSY = 1;
  public static readonly int STORAGE_COMPRESS_LOSSLESS = 2;
  public static readonly int SIDE_LEFT = 0;
  public static readonly int SIDE_RIGHT = 1;
  public static readonly int SIDE_BOTTOM = 2;
  public static readonly int SIDE_TOP = 3;
  public static readonly int SIDE_FRONT = 4;
  public static readonly int SIDE_BACK = 5;
  public static readonly int FLAG_MIPMAPS = 1;
  public static readonly int FLAG_REPEAT = 2;
  public static readonly int FLAG_FILTER = 4;
  public static readonly int FLAGS_DEFAULT = 7;

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

%typemap(cscode) CubeMap %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CubeMap %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CubeMap;

class CubeMap : public Resource {
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
    RID get_rid() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_rid");
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
    void set_side(int side, const Image& image) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_side", side, image);
    }
  }
  %extend {
    Image get_side(int side) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_side", side);
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
  CubeMap();

};
