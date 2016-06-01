/* mMainLoop.i */
%module mMainLoop


%typemap(csbody_derived) MainLoop %{
  public static readonly int NOTIFICATION_WM_MOUSE_ENTER = 3;
  public static readonly int NOTIFICATION_WM_MOUSE_EXIT = 4;
  public static readonly int NOTIFICATION_WM_FOCUS_IN = 5;
  public static readonly int NOTIFICATION_WM_FOCUS_OUT = 6;
  public static readonly int NOTIFICATION_WM_QUIT_REQUEST = 7;
  public static readonly int NOTIFICATION_WM_UNFOCUS_REQUEST = 8;
  public static readonly int NOTIFICATION_OS_MEMORY_WARNING = 9;

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

%typemap(cscode) MainLoop %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) MainLoop %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor MainLoop;

class MainLoop : public Object {
public:
  %extend {
    void _drop_files(const StringArray& files, int screen) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_drop_files", files, screen);
    }
  }
  %extend {
    void _finalize() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_finalize");
    }
  }
  %extend {
    void _idle(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_idle", delta);
    }
  }
  %extend {
    void _initialize() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_initialize");
    }
  }
  %extend {
    void _input_event(const InputEvent& ev) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input_event", ev);
    }
  }
  %extend {
    void _input_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_input_text", text);
    }
  }
  %extend {
    void _iteration(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("_iteration", delta);
    }
  }
  %extend {
    void input_event(const InputEvent& ev) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("input_event", ev);
    }
  }
  %extend {
    void input_text(const String& text) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("input_text", text);
    }
  }
  %extend {
    void init() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("init");
    }
  }
  %extend {
    bool iteration(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("iteration", delta);
    }
  }
  %extend {
    bool idle(float delta) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("idle", delta);
    }
  }
  %extend {
    void finish() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("finish");
    }
  }
  MainLoop();

};
