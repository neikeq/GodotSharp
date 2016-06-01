/* mMaterial.i */
%module mMaterial

%nodefaultctor Material;

%typemap(csbody_derived) Material %{
  public static readonly int FLAG_VISIBLE = 0;
  public static readonly int FLAG_DOUBLE_SIDED = 1;
  public static readonly int FLAG_INVERT_FACES = 2;
  public static readonly int FLAG_UNSHADED = 3;
  public static readonly int FLAG_ONTOP = 4;
  public static readonly int FLAG_LIGHTMAP_ON_UV2 = 5;
  public static readonly int FLAG_COLOR_ARRAY_SRGB = 6;
  public static readonly int FLAG_MAX = 7;
  public static readonly int DEPTH_DRAW_ALWAYS = 0;
  public static readonly int DEPTH_DRAW_OPAQUE_ONLY = 1;
  public static readonly int DEPTH_DRAW_OPAQUE_PRE_PASS_ALPHA = 2;
  public static readonly int DEPTH_DRAW_NEVER = 3;
  public static readonly int BLEND_MODE_MIX = 0;
  public static readonly int BLEND_MODE_ADD = 1;
  public static readonly int BLEND_MODE_SUB = 2;
  public static readonly int BLEND_MODE_MUL = 3;
  public static readonly int BLEND_MODE_PREMULT_ALPHA = 4;

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

%typemap(cscode) Material %{
  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) Material %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Material;

class Material : public Resource {
public:
  %extend {
    void set_flag(int flag, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flag", flag, enable);
    }
  }
  %extend {
    bool get_flag(int flag) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_flag", flag);
    }
  }
  %extend {
    void set_blend_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_blend_mode", mode);
    }
  }
  %extend {
    int get_blend_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_blend_mode");
    }
  }
  %extend {
    void set_line_width(float width) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_line_width", width);
    }
  }
  %extend {
    float get_line_width() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_line_width");
    }
  }
  %extend {
    void set_depth_draw_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_depth_draw_mode", mode);
    }
  }
  %extend {
    int get_depth_draw_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_depth_draw_mode");
    }
  }

};
