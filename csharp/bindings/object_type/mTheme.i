/* mTheme.i */
%module mTheme

%typemap(ctype, out="Theme*") Ref<Theme> "Theme*"
%typemap(out, null="NULL") Ref<Theme> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<Theme> "Theme.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Theme> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Theme> "Theme"
%typemap(csout, excode=SWIGEXCODE) Ref<Theme> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Theme ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Theme;$excode
    return ret;
}

template<class Theme> class Ref;%template() Ref<Theme>;
%feature("novaluewrapper") Ref<Theme>;


%typemap(csbody_derived) Theme %{

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

%typemap(cscode) Theme %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Theme %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Theme;

class Theme : public Resource {
public:
  %extend {
    void set_icon(const String& name, const String& type, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_icon", name, type, texture);
    }
  }
  %extend {
    Ref<Texture> get_icon(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon", name, type).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    bool has_icon(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_icon", name, type);
    }
  }
  %extend {
    void clear_icon(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_icon", name, type);
    }
  }
  %extend {
    StringArray get_icon_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_icon_list", type);
    }
  }
  %extend {
    void set_stylebox(const String& name, const String& type, Ref<StyleBox> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_stylebox", name, type, texture);
    }
  }
  %extend {
    Ref<StyleBox> get_stylebox(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stylebox", name, type).operator Object *()->cast_to<StyleBox>();
    }
  }
  %extend {
    bool has_stylebox(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_stylebox", name, type);
    }
  }
  %extend {
    void clear_stylebox(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_stylebox", name, type);
    }
  }
  %extend {
    StringArray get_stylebox_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stylebox_list", type);
    }
  }
  %extend {
    StringArray get_stylebox_types() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_stylebox_types");
    }
  }
  %extend {
    void set_font(const String& name, const String& type, Ref<Font> font) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_font", name, type, font);
    }
  }
  %extend {
    Ref<Font> get_font(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_font", name, type).operator Object *()->cast_to<Font>();
    }
  }
  %extend {
    bool has_font(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_font", name, type);
    }
  }
  %extend {
    void clear_font(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_font", name, type);
    }
  }
  %extend {
    StringArray get_font_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_font_list", type);
    }
  }
  %extend {
    void set_color(const String& name, const String& type, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", name, type, color);
    }
  }
  %extend {
    Color get_color(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color", name, type);
    }
  }
  %extend {
    bool has_color(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_color", name, type);
    }
  }
  %extend {
    void clear_color(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_color", name, type);
    }
  }
  %extend {
    StringArray get_color_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color_list", type);
    }
  }
  %extend {
    void set_constant(const String& name, const String& type, int constant) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_constant", name, type, constant);
    }
  }
  %extend {
    int get_constant(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_constant", name, type);
    }
  }
  %extend {
    bool has_constant(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_constant", name, type);
    }
  }
  %extend {
    void clear_constant(const String& name, const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_constant", name, type);
    }
  }
  %extend {
    StringArray get_constant_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_constant_list", type);
    }
  }
  %extend {
    void set_default_font(Object* font) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_default_font", font);
    }
  }
  %extend {
    Object* get_default_font() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_default_font").operator Object *();
    }
  }
  %extend {
    StringArray get_type_list(const String& type) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_type_list", type);
    }
  }
  %extend {
    void copy_default_theme() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("copy_default_theme");
    }
  }
  Theme();
  %extend {
    ~Theme() {
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
