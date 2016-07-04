/* mRoom.i */
%module mRoom


%typemap(csbody_derived) Room %{

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

%typemap(cscode) Room %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Room %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Room;

class Room : public VisualInstance {
public:
  Room();

%extend {

void set_room(Room* room) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Room", "set_room");
  const void* __args[1] = { room };
  __method_bind->ptrcall($self, __args, NULL);
}

Room* get_room() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Room", "get_room");
  Room* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void compute_room_from_subtree() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Room", "compute_room_from_subtree");
  __method_bind->ptrcall($self, NULL, NULL);
}

void set_simulate_acoustics(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Room", "set_simulate_acoustics");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_simulating_acoustics() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Room", "is_simulating_acoustics");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
