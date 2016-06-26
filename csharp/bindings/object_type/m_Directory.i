/* m_Directory.i */
%module m_Directory

%rename(Directory) _Directory;
template<class _Directory> class Ref;%template() Ref<_Directory>;
%feature("novaluewrapper") Ref<_Directory>;


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
  _Directory();

%extend {

int open(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "open");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool list_dir_begin() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "list_dir_begin");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_next() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "get_next");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

bool current_is_dir() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "current_is_dir");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void list_dir_end() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "list_dir_end");
  __method_bind->ptrcall($self, NULL, NULL);
}

int get_drive_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "get_drive_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_drive(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "get_drive");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int change_dir(const String& todir) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "change_dir");
  const void* __args[1] = { &todir };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_current_dir() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "get_current_dir");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int make_dir(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "make_dir");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int make_dir_recursive(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "make_dir_recursive");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool file_exists(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "file_exists");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool dir_exists(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "dir_exists");
  const void* __args[1] = { &path };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int get_space_left() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "get_space_left");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int copy(const String& from, const String& to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "copy");
  const void* __args[2] = { &from, &to };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int rename(const String& from, const String& to) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "rename");
  const void* __args[2] = { &from, &to };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int remove(const String& path) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("_Directory", "remove");
  const void* __args[1] = { &path };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~_Directory() {
  if ($self->get_script_instance()) {
    CSharpInstance *cs_instance = dynamic_cast<CSharpInstance*>($self->get_script_instance());
    if (cs_instance) {
      cs_instance->mono_object_disposed();
      return;
    }
  }
  if ($self->unreference()) {
    memdelete($self);
  }
}

}


};
