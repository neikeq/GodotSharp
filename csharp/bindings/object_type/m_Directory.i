/* m_Directory.i */
%module m_Directory

%rename(Directory) _Directory;

%typemap(csbody_derived) _Directory %{

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

%typemap(cscode) _Directory %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) _Directory %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor _Directory;

class _Directory : public Reference {
public:
  %extend {
    int open(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open", path);
    }
  }
  %extend {
    bool list_dir_begin() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("list_dir_begin");
    }
  }
  %extend {
    String get_next() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_next");
    }
  }
  %extend {
    bool current_is_dir() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("current_is_dir");
    }
  }
  %extend {
    void list_dir_end() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("list_dir_end");
    }
  }
  %extend {
    int get_drive_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_drive_count");
    }
  }
  %extend {
    String get_drive(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_drive", idx);
    }
  }
  %extend {
    int change_dir(const String& todir) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("change_dir", todir);
    }
  }
  %extend {
    String get_current_dir() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_dir");
    }
  }
  %extend {
    int make_dir(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("make_dir", path);
    }
  }
  %extend {
    int make_dir_recursive(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("make_dir_recursive", path);
    }
  }
  %extend {
    bool file_exists(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("file_exists", path);
    }
  }
  %extend {
    bool dir_exists(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("dir_exists", path);
    }
  }
  %extend {
    int get_space_left() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_space_left");
    }
  }
  %extend {
    int copy(const String& from, const String& to) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("copy", from, to);
    }
  }
  %extend {
    int rename(const String& from, const String& to) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("rename", from, to);
    }
  }
  %extend {
    int remove(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("remove", path);
    }
  }
  _Directory();

};
