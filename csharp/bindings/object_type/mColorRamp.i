/* mColorRamp.i */
%module mColorRamp

%typemap(ctype, out="ColorRamp*") Ref<ColorRamp> "ColorRamp*"
%typemap(out, null="NULL") Ref<ColorRamp> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<ColorRamp> "ColorRamp.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ColorRamp> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ColorRamp> "ColorRamp"
%typemap(csout, excode=SWIGEXCODE) Ref<ColorRamp> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ColorRamp ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ColorRamp;$excode
    return ret;
}

template<class ColorRamp> class Ref;%template() Ref<ColorRamp>;
%feature("novaluewrapper") Ref<ColorRamp>;


%typemap(csbody_derived) ColorRamp %{

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

%typemap(cscode) ColorRamp %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ColorRamp %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ColorRamp;

class ColorRamp : public Resource {
public:
  %extend {
    void add_point(float offset, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_point", offset, color);
    }
  }
  %extend {
    void remove_point(int offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_point", offset);
    }
  }
  %extend {
    void set_offset(int point, float offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", point, offset);
    }
  }
  %extend {
    float get_offset(int point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset", point);
    }
  }
  %extend {
    void set_color(int point, const Color& color) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_color", point, color);
    }
  }
  %extend {
    Color get_color(int point) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_color", point);
    }
  }
  %extend {
    Color interpolate(float offset) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("interpolate", offset);
    }
  }
  %extend {
    int get_point_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_point_count");
    }
  }
  %extend {
    void set_offsets(const RealArray& offsets) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offsets", offsets);
    }
  }
  %extend {
    RealArray get_offsets() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offsets");
    }
  }
  %extend {
    void set_colors(const ColorArray& colors) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_colors", colors);
    }
  }
  %extend {
    ColorArray get_colors() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_colors");
    }
  }
  ColorRamp();
  %extend {
    ~ColorRamp() {
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
