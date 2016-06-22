/* mTimer.i */
%module mTimer

%typemap(out) Timer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Timer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) Timer %{
  public static readonly int TIMER_PROCESS_FIXED = 0;
  public static readonly int TIMER_PROCESS_IDLE = 1;

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

%typemap(cscode) Timer %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Timer %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Timer;

class Timer : public Node {
public:
  %extend {
    void set_wait_time(float time_sec) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_wait_time", time_sec);
    }
  }
  %extend {
    float get_wait_time() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_wait_time");
    }
  }
  %extend {
    void set_one_shot(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_one_shot", enable);
    }
  }
  %extend {
    bool is_one_shot() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_one_shot");
    }
  }
  %extend {
    void set_autostart(bool enable) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_autostart", enable);
    }
  }
  %extend {
    bool has_autostart() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_autostart");
    }
  }
  %extend {
    void start() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("start");
    }
  }
  %extend {
    void stop() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("stop");
    }
  }
  %extend {
    void set_active(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_active", active);
    }
  }
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    float get_time_left() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_time_left");
    }
  }
  %extend {
    void set_timer_process_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_timer_process_mode", mode);
    }
  }
  %extend {
    int get_timer_process_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_timer_process_mode");
    }
  }
  Timer();

};
