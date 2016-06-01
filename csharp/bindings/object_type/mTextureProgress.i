/* mTextureProgress.i */
%module mTextureProgress


%typemap(csbody_derived) TextureProgress %{
  public static readonly int FILL_LEFT_TO_RIGHT = 0;
  public static readonly int FILL_RIGHT_TO_LEFT = 1;
  public static readonly int FILL_TOP_TO_BOTTOM = 2;
  public static readonly int FILL_BOTTOM_TO_TOP = 3;
  public static readonly int FILL_CLOCKWISE = 4;
  public static readonly int FILL_COUNTER_CLOCKWISE = 5;

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

%typemap(cscode) TextureProgress %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TextureProgress %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TextureProgress;

class TextureProgress : public Range {
public:
  %extend {
    void set_under_texture(Object* tex) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_under_texture", tex);
    }
  }
  %extend {
    Object* get_under_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_under_texture").operator Object *();
    }
  }
  %extend {
    void set_progress_texture(Object* tex) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_progress_texture", tex);
    }
  }
  %extend {
    Object* get_progress_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_progress_texture").operator Object *();
    }
  }
  %extend {
    void set_over_texture(Object* tex) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_over_texture", tex);
    }
  }
  %extend {
    Object* get_over_texture() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_over_texture").operator Object *();
    }
  }
  %extend {
    void set_fill_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fill_mode", mode);
    }
  }
  %extend {
    int get_fill_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fill_mode");
    }
  }
  %extend {
    void set_radial_initial_angle(float mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radial_initial_angle", mode);
    }
  }
  %extend {
    float get_radial_initial_angle() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radial_initial_angle");
    }
  }
  %extend {
    void set_radial_center_offset(const Vector2& mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_radial_center_offset", mode);
    }
  }
  %extend {
    Vector2 get_radial_center_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_radial_center_offset");
    }
  }
  %extend {
    void set_fill_degrees(float mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fill_degrees", mode);
    }
  }
  %extend {
    float get_fill_degrees() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fill_degrees");
    }
  }
  TextureProgress();

};
