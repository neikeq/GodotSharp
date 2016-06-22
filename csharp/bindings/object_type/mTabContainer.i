/* mTabContainer.i */
%module mTabContainer

%typemap(out) TabContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TabContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) TabContainer %{

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

%typemap(cscode) TabContainer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) TabContainer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor TabContainer;

class TabContainer : public Control {
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
    Control* get_current_tab_control() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_tab_control").operator Object *()->cast_to<Control>();
    }
  }
  %extend {
    Control* get_tab_control(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tab_control", idx).operator Object *()->cast_to<Control>();
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
    void set_tabs_visible(bool visible) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tabs_visible", visible);
    }
  }
  %extend {
    bool are_tabs_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("are_tabs_visible");
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
    void set_popup(Popup* popup) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_popup", popup);
    }
  }
  %extend {
    Popup* get_popup() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_popup").operator Object *()->cast_to<Popup>();
    }
  }
  TabContainer();

};
