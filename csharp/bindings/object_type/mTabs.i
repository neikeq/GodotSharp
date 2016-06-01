/* mTabs.i */
%module mTabs


%typemap(csbody_derived) Tabs %{
  public static readonly int ALIGN_LEFT = 0;
  public static readonly int ALIGN_CENTER = 1;
  public static readonly int ALIGN_RIGHT = 2;
  public static readonly int CLOSE_BUTTON_SHOW_ACTIVE_ONLY = 1;
  public static readonly int CLOSE_BUTTON_SHOW_ALWAYS = 2;
  public static readonly int CLOSE_BUTTON_SHOW_NEVER = 0;

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

%typemap(cscode) Tabs %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Tabs %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Tabs;

class Tabs : public Control {
public:
  %extend {
    int get_tab_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_count");
    }
  }
  %extend {
    void set_current_tab(int tab_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_tab", tab_idx);
    }
  }
  %extend {
    int get_current_tab() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_tab");
    }
  }
  %extend {
    void set_tab_title(int tab_idx, const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tab_title", tab_idx, title);
    }
  }
  %extend {
    String get_tab_title(int tab_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_title", tab_idx);
    }
  }
  %extend {
    void set_tab_icon(int tab_idx, Ref<Texture> icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tab_icon", tab_idx, icon);
    }
  }
  %extend {
    Ref<Texture> get_tab_icon(int tab_idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_icon", tab_idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    void remove_tab(int tab_idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_tab", tab_idx);
    }
  }
  %extend {
    void add_tab(const String& title, Ref<Texture> icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_tab", title, icon);
    }
  }
  %extend {
    void set_tab_align(int align) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tab_align", align);
    }
  }
  %extend {
    int get_tab_align() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_align");
    }
  }
  %extend {
    void ensure_tab_visible(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("ensure_tab_visible", idx);
    }
  }
  Tabs();

};
