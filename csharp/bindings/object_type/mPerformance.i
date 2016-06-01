/* mPerformance.i */
%module mPerformance

%csmethodmodifiers Performance::Performance "private"
%csmethodmodifiers Performance::SingletonGetInstance "private"
%nodefaultctor Performance;

%typemap(csbody_derived) Performance %{
  private static $csclassname instance;
  public static readonly int TIME_FPS = 0;
  public static readonly int TIME_PROCESS = 1;
  public static readonly int TIME_FIXED_PROCESS = 2;
  public static readonly int MEMORY_STATIC = 3;
  public static readonly int MEMORY_DYNAMIC = 4;
  public static readonly int MEMORY_STATIC_MAX = 5;
  public static readonly int MEMORY_DYNAMIC_MAX = 6;
  public static readonly int MEMORY_MESSAGE_BUFFER_MAX = 7;
  public static readonly int OBJECT_COUNT = 8;
  public static readonly int OBJECT_RESOURCE_COUNT = 9;
  public static readonly int OBJECT_NODE_COUNT = 10;
  public static readonly int RENDER_OBJECTS_IN_FRAME = 11;
  public static readonly int RENDER_VERTICES_IN_FRAME = 12;
  public static readonly int RENDER_MATERIAL_CHANGES_IN_FRAME = 13;
  public static readonly int RENDER_SHADER_CHANGES_IN_FRAME = 14;
  public static readonly int RENDER_SURFACE_CHANGES_IN_FRAME = 15;
  public static readonly int RENDER_DRAW_CALLS_IN_FRAME = 16;
  public static readonly int RENDER_USAGE_VIDEO_MEM_TOTAL = 20;
  public static readonly int RENDER_VIDEO_MEM_USED = 17;
  public static readonly int RENDER_TEXTURE_MEM_USED = 18;
  public static readonly int RENDER_VERTEX_MEM_USED = 19;
  public static readonly int PHYSICS_2D_ACTIVE_OBJECTS = 21;
  public static readonly int PHYSICS_2D_COLLISION_PAIRS = 22;
  public static readonly int PHYSICS_2D_ISLAND_COUNT = 23;
  public static readonly int PHYSICS_3D_ACTIVE_OBJECTS = 24;
  public static readonly int PHYSICS_3D_COLLISION_PAIRS = 25;
  public static readonly int PHYSICS_3D_ISLAND_COUNT = 26;
  public static readonly int MONITOR_MAX = 27;

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

%typemap(cscode) Performance %{
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

%typemap(csconstruct, excode=SWIGEXCODE) Performance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Performance;

class Performance : public Object {
public:
  %extend {
    float get_monitor(int monitor) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_monitor", monitor);
    }
  }
  %extend {
    static Performance* SingletonGetInstance()  { return Globals::get_singleton()->get_singleton_object("Performance")->cast_to<Performance>(); }
  }

};
