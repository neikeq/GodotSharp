/* mGraphNode.i */
%module mGraphNode

%typemap(out) GraphNode "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GraphNode* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) GraphNode %{

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

%typemap(cscode) GraphNode %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GraphNode %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GraphNode;

class GraphNode : public Container {
public:
  %extend {
    void set_title(const String& title) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_title", title);
    }
  }
  %extend {
    String get_title() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_title");
    }
  }
  %extend {
    void set_slot(int idx, bool enable_left, int type_left, const Color& color_left, bool enable_right, int type_right, const Color& color_right) {
  Variant::CallError err;
Variant arg_0_ = Variant(idx);
Variant arg_1_ = Variant(enable_left);
Variant arg_2_ = Variant(type_left);
Variant arg_3_ = Variant(color_left);
Variant arg_4_ = Variant(enable_right);
Variant arg_5_ = Variant(type_right);
Variant arg_6_ = Variant(color_right);
Variant *args_[7] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_ };
$self->call("set_slot", (const Variant **) args_, 7, err);
    }
  }
  %extend {
    void clear_slot(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_slot", idx);
    }
  }
  %extend {
    void clear_all_slots() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_all_slots");
    }
  }
  %extend {
    bool is_slot_enabled_left(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_slot_enabled_left", idx);
    }
  }
  %extend {
    int get_slot_type_left(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_slot_type_left", idx);
    }
  }
  %extend {
    Color get_slot_color_left(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_slot_color_left", idx);
    }
  }
  %extend {
    bool is_slot_enabled_right(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_slot_enabled_right", idx);
    }
  }
  %extend {
    int get_slot_type_right(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_slot_type_right", idx);
    }
  }
  %extend {
    Color get_slot_color_right(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_slot_color_right", idx);
    }
  }
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    int get_connection_output_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_output_count");
    }
  }
  %extend {
    int get_connection_input_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_input_count");
    }
  }
  %extend {
    Vector2 get_connection_output_pos(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_output_pos", idx);
    }
  }
  %extend {
    int get_connection_output_type(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_output_type", idx);
    }
  }
  %extend {
    Color get_connection_output_color(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_output_color", idx);
    }
  }
  %extend {
    Vector2 get_connection_input_pos(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_input_pos", idx);
    }
  }
  %extend {
    int get_connection_input_type(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_input_type", idx);
    }
  }
  %extend {
    Color get_connection_input_color(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_input_color", idx);
    }
  }
  %extend {
    void set_show_close_button(bool show) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_show_close_button", show);
    }
  }
  %extend {
    bool is_close_button_visible() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_close_button_visible");
    }
  }
  GraphNode();

};
