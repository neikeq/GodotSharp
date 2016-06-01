/* mButton.i */
%module mButton


%typemap(csbody_derived) Button %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;

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

%typemap(cscode) Button %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Button %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Button;

class Button : public BaseButton {
public:
  %extend {
    void set_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_text", text);
    }
  }
  %extend {
    String get_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_text");
    }
  }
  %extend {
    void set_button_icon(Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_button_icon", texture);
    }
  }
  %extend {
    Ref<Texture> get_button_icon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_button_icon").operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void set_flat(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_flat", enabled);
    }
  }
  %extend {
    void set_clip_text(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_clip_text", enabled);
    }
  }
  %extend {
    bool get_clip_text() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_clip_text");
    }
  }
  %extend {
    void set_text_align(int align) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_text_align", align);
    }
  }
  %extend {
    int get_text_align() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_text_align");
    }
  }
  %extend {
    bool is_flat() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_flat");
    }
  }
  Button();

};
