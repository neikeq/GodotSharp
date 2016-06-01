/* mFileDialog.i */
%module mFileDialog


%typemap(csbody_derived) FileDialog %{
  public static readonly int MODE_OPEN_FILE = 0;
  public static readonly int MODE_OPEN_FILES = 1;
  public static readonly int MODE_OPEN_DIR = 2;
  public static readonly int MODE_OPEN_ANY = 3;
  public static readonly int MODE_SAVE_FILE = 4;
  public static readonly int ACCESS_RESOURCES = 0;
  public static readonly int ACCESS_USERDATA = 1;
  public static readonly int ACCESS_FILESYSTEM = 2;

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

%typemap(cscode) FileDialog %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) FileDialog %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor FileDialog;

class FileDialog : public ConfirmationDialog {
public:
  %extend {
    void clear_filters() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_filters");
    }
  }
  %extend {
    void add_filter(const String& filter) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_filter", filter);
    }
  }
  %extend {
    String get_current_dir() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_dir");
    }
  }
  %extend {
    String get_current_file() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_file");
    }
  }
  %extend {
    String get_current_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_path");
    }
  }
  %extend {
    void set_current_dir(const String& dir) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_dir", dir);
    }
  }
  %extend {
    void set_current_file(const String& file) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_file", file);
    }
  }
  %extend {
    void set_current_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_current_path", path);
    }
  }
  %extend {
    void set_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_mode", mode);
    }
  }
  %extend {
    int get_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_mode");
    }
  }
  %extend {
    VBoxContainer* get_vbox() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_vbox").operator Object *()->cast_to<VBoxContainer>();
    }
  }
  %extend {
    void set_access(int access) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_access", access);
    }
  }
  %extend {
    int get_access() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_access");
    }
  }
  %extend {
    void set_show_hidden_files(bool show) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_show_hidden_files", show);
    }
  }
  %extend {
    bool is_showing_hidden_files() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_showing_hidden_files");
    }
  }
  %extend {
    void invalidate() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("invalidate");
    }
  }
  FileDialog();

};
