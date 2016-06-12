/* mPopupMenu.i */
%module mPopupMenu


%typemap(csbody_derived) PopupMenu %{

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

%typemap(cscode) PopupMenu %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) PopupMenu %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor PopupMenu;

class PopupMenu : public Popup {
public:
  %extend {
    void add_icon_item(Object* texture, const String& label, int id = -1, int accel = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_item", texture, label, id, accel);
    }
  }
  %extend {
    void add_item(const String& label, int id = -1, int accel = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_item", label, id, accel);
    }
  }
  %extend {
    void add_icon_check_item(Object* texture, const String& label, int id = -1, int accel = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_check_item", texture, label, id, accel);
    }
  }
  %extend {
    void add_check_item(const String& label, int id = -1, int accel = 0) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_check_item", label, id, accel);
    }
  }
  %extend {
    void add_submenu_item(const String& label, const String& submenu, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_submenu_item", label, submenu, id);
    }
  }
  %extend {
    void add_icon_shortcut(Object* texture, Ref<ShortCut> shortcut, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_shortcut", texture, shortcut, id);
    }
  }
  %extend {
    void add_shortcut(Ref<ShortCut> shortcut, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_shortcut", shortcut, id);
    }
  }
  %extend {
    void add_icon_check_shortcut(Object* texture, Ref<ShortCut> shortcut, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_check_shortcut", texture, shortcut, id);
    }
  }
  %extend {
    void add_check_shortcut(Ref<ShortCut> shortcut, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_check_shortcut", shortcut, id);
    }
  }
  %extend {
    void set_item_text(int idx, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_text", idx, text);
    }
  }
  %extend {
    void set_item_icon(int idx, Object* icon) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_icon", idx, icon);
    }
  }
  %extend {
    void set_item_accelerator(int idx, int accel) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_accelerator", idx, accel);
    }
  }
  %extend {
    void set_item_metadata(int idx, const Variant& metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_metadata", idx, metadata);
    }
  }
  %extend {
    void set_item_checked(int idx, bool checked) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_checked", idx, checked);
    }
  }
  %extend {
    void set_item_disabled(int idx, bool disabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_disabled", idx, disabled);
    }
  }
  %extend {
    void set_item_shortcut(int idx, Ref<ShortCut> shortcut) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_shortcut", idx, shortcut);
    }
  }
  %extend {
    void set_item_submenu(int idx, const String& submenu) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_submenu", idx, submenu);
    }
  }
  %extend {
    void set_item_as_separator(int idx, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_as_separator", idx, enable);
    }
  }
  %extend {
    void set_item_as_checkable(int idx, bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_as_checkable", idx, enable);
    }
  }
  %extend {
    void set_item_ID(int idx, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_ID", idx, id);
    }
  }
  %extend {
    String get_item_text(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_text", idx);
    }
  }
  %extend {
    Object* get_item_icon(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_icon", idx).operator Object *();
    }
  }
  %extend {
    void get_item_metadata(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_item_metadata", idx);
    }
  }
  %extend {
    int get_item_accelerator(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_accelerator", idx);
    }
  }
  %extend {
    Ref<ShortCut> get_item_shortcut(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_shortcut", idx).operator Object *()->cast_to<ShortCut>();
    }
  }
  %extend {
    String get_item_submenu(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_submenu", idx);
    }
  }
  %extend {
    bool is_item_separator(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_separator", idx);
    }
  }
  %extend {
    bool is_item_checkable(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_checkable", idx);
    }
  }
  %extend {
    bool is_item_checked(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_checked", idx);
    }
  }
  %extend {
    bool is_item_disabled(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_disabled", idx);
    }
  }
  %extend {
    int get_item_ID(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_ID", idx);
    }
  }
  %extend {
    int get_item_index(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_index", id);
    }
  }
  %extend {
    int get_item_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_count");
    }
  }
  %extend {
    void add_separator() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_separator");
    }
  }
  %extend {
    void remove_item(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_item", idx);
    }
  }
  %extend {
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  PopupMenu();

};
