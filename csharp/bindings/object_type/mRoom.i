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
    }$excode
  }
%}

%nodefaultdtor Room;

class Room : public VisualInstance {
public:
  %extend {
    void set_room(Room* room) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_room", room);
    }
  }
  %extend {
    Room* get_room() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_room").operator Object *()->cast_to<Room>();
    }
  }
  %extend {
    void compute_room_from_subtree() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("compute_room_from_subtree");
    }
  }
  %extend {
    void set_simulate_acoustics(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_simulate_acoustics", enable);
    }
  }
  %extend {
    bool is_simulating_acoustics() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_simulating_acoustics");
    }
  }
  Room();

};
