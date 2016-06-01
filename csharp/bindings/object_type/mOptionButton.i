/* mOptionButton.i */
%module mOptionButton


%typemap(csbody_derived) OptionButton %{

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

%typemap(cscode) OptionButton %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) OptionButton %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor OptionButton;

class OptionButton : public Button {
public:
  %extend {
    void add_item(const String& label, int id = -1) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_item", label, id);
    }
  }
  %extend {
    void add_icon_item(Ref<Texture> texture, const String& label, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_icon_item", texture, label, id);
    }
  }
  %extend {
    void set_item_text(int idx, const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_text", idx, text);
    }
  }
  %extend {
    void set_item_icon(int idx, Ref<Texture> texture) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_icon", idx, texture);
    }
  }
  %extend {
    void set_item_disabled(int idx, bool disabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_disabled", idx, disabled);
    }
  }
  %extend {
    void set_item_ID(int idx, int id) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_ID", idx, id);
    }
  }
  %extend {
    void set_item_metadata(int idx, const Variant& metadata) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_item_metadata", idx, metadata);
    }
  }
  %extend {
    String get_item_text(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_text", idx);
    }
  }
  %extend {
    Ref<Texture> get_item_icon(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_icon", idx).operator Object *()->cast_to<Texture>();
    }
  }
  %extend {
    int get_item_ID(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_item_ID", idx);
    }
  }
  %extend {
    void get_item_metadata(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_item_metadata", idx);
    }
  }
  %extend {
    bool is_item_disabled(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_item_disabled", idx);
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
    void clear() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear");
    }
  }
  %extend {
    void select(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("select", idx);
    }
  }
  %extend {
    int get_selected() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected");
    }
  }
  %extend {
    int get_selected_ID() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_selected_ID");
    }
  }
  %extend {
    void get_selected_metadata() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("get_selected_metadata");
    }
  }
  %extend {
    void remove_item(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("remove_item", idx);
    }
  }
  OptionButton();

};
