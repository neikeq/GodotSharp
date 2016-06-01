/* mInputMap.i */
%module mInputMap

%csmethodmodifiers InputMap::InputMap "private"
%csmethodmodifiers InputMap::SingletonGetInstance "private"
%nodefaultctor InputMap;

%typemap(csbody_derived) InputMap %{
  private static $csclassname instance;

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

%typemap(cscode) InputMap %{
  public static $csclassname Instance {
    get {
      if (instance == null) {
        instance = SingletonGetInstance();
      }
      return instance;
    }
  }

  internal $csclassname() {}

%}

%typemap(csconstruct, excode=SWIGEXCODE) InputMap %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor InputMap;

class InputMap : public Object {
public:
  %extend {
    bool has_action(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_action", action);
    }
  }
  %extend {
    int get_action_id(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_action_id", action);
    }
  }
  %extend {
    String get_action_from_id(int id) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_action_from_id", id);
    }
  }
  %extend {
    void add_action(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_action", action);
    }
  }
  %extend {
    void erase_action(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase_action", action);
    }
  }
  %extend {
    void action_add_event(const String& action, const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("action_add_event", action, event);
    }
  }
  %extend {
    bool action_has_event(const String& action, const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("action_has_event", action, event);
    }
  }
  %extend {
    void action_erase_event(const String& action, const InputEvent& event) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("action_erase_event", action, event);
    }
  }
  %extend {
    Array get_action_list(const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_action_list", action);
    }
  }
  %extend {
    bool event_is_action(const InputEvent& event, const String& action) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("event_is_action", event, action);
    }
  }
  %extend {
    void load_from_globals() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("load_from_globals");
    }
  }
  %extend {
    static InputMap* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("InputMap")->cast_to<InputMap>(); }
  }

};
