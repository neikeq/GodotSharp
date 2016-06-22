/* mBitmapFont.i */
%module mBitmapFont

%typemap(ctype, out="BitmapFont*") Ref<BitmapFont> "BitmapFont*"
%typemap(out, null="NULL") Ref<BitmapFont> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<BitmapFont> "BitmapFont.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BitmapFont> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BitmapFont> "BitmapFont"
%typemap(csout, excode=SWIGEXCODE) Ref<BitmapFont> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BitmapFont ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BitmapFont;$excode
    return ret;
}

template<class BitmapFont> class Ref;%template() Ref<BitmapFont>;
%feature("novaluewrapper") Ref<BitmapFont>;


%typemap(csbody_derived) BitmapFont %{

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

%typemap(cscode) BitmapFont %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) BitmapFont %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor BitmapFont;

class BitmapFont : public Font {
public:
  %extend {
    int create_from_fnt(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("create_from_fnt", path);
    }
  }
  %extend {
    void set_height(float px) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_height", px);
    }
  }
  %extend {
    void set_ascent(float px) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_ascent", px);
    }
  }
  %extend {
    void add_kerning_pair(int char_a, int char_b, int kerning) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_kerning_pair", char_a, char_b, kerning);
    }
  }
  %extend {
    int get_kerning_pair(int char_a, int char_b) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_kerning_pair", char_a, char_b);
    }
  }
  %extend {
    void add_texture(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_texture", texture);
    }
  }
  %extend {
    void add_char(int character, int texture, const Rect2& rect, const Vector2& align = Vector2(0,0), float advance = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_char", character, texture, rect, align, advance);
    }
  }
  %extend {
    int get_texture_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture_count");
    }
  }
  %extend {
    Ref<Texture> get_texture(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_texture", idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    Vector2 get_char_size(int char_, int next = 0) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_char_size", char_, next);
    }
  }
  %extend {
    void set_distance_field_hint(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_distance_field_hint", enable);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void set_fallback(Object* fallback) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_fallback", fallback);
    }
  }
  %extend {
    Object* get_fallback() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_fallback").operator Object *();
    }
  }
  BitmapFont();
  %extend {
    ~BitmapFont() {
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
