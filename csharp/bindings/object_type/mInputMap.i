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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor InputMap;

class InputMap : public Object {
public:

%extend {

bool has_action(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "has_action");
  const void* __args[1] = { &action };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_action_id(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "get_action_id");
  const void* __args[1] = { &action };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_action_from_id(int id) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "get_action_from_id");
  const void* __args[1] = { &id };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Array get_actions() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "get_actions");
  Array ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void add_action(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "add_action");
  const void* __args[1] = { &action };
  __method_bind->ptrcall($self, __args, NULL);
}

void erase_action(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "erase_action");
  const void* __args[1] = { &action };
  __method_bind->ptrcall($self, __args, NULL);
}

void action_add_event(const String& action, const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "action_add_event");
  const void* __args[2] = { &action, &event };
  __method_bind->ptrcall($self, __args, NULL);
}

bool action_has_event(const String& action, const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "action_has_event");
  const void* __args[2] = { &action, &event };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void action_erase_event(const String& action, const InputEvent& event) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "action_erase_event");
  const void* __args[2] = { &action, &event };
  __method_bind->ptrcall($self, __args, NULL);
}

Array get_action_list(const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "get_action_list");
  const void* __args[1] = { &action };
  Array ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool event_is_action(const InputEvent& event, const String& action) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "event_is_action");
  const void* __args[2] = { &event, &action };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void load_from_globals() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("InputMap", "load_from_globals");
  __method_bind->ptrcall($self, NULL, NULL);
}

static InputMap* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("InputMap")->cast_to<InputMap>(); }

}


};
