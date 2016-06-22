/* mGraphEdit.i */
%module mGraphEdit

%typemap(out) GraphEdit "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GraphEdit* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) GraphEdit %{

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

%typemap(cscode) GraphEdit %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) GraphEdit %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor GraphEdit;

class GraphEdit : public Control {
public:
  %extend {
    int connect_node(const String& from, int from_port, const String& to, int to_port) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("connect_node", from, from_port, to, to_port);
    }
  }
  %extend {
    bool is_node_connected(const String& from, int from_port, const String& to, int to_port) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_node_connected", from, from_port, to, to_port);
    }
  }
  %extend {
    void disconnect_node(const String& from, int from_port, const String& to, int to_port) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("disconnect_node", from, from_port, to, to_port);
    }
  }
  %extend {
    Array get_connection_list() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_connection_list");
    }
  }
  %extend {
    Vector2 get_scroll_ofs() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_scroll_ofs");
    }
  }
  %extend {
    void set_zoom(float p_zoom) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_zoom", p_zoom);
    }
  }
  %extend {
    float get_zoom() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_zoom");
    }
  }
  %extend {
    void set_right_disconnects(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_right_disconnects", enable);
    }
  }
  %extend {
    bool is_right_disconnects_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_right_disconnects_enabled");
    }
  }
  GraphEdit();

};
