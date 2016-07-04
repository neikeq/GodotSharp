/* mUndoRedo.i */
%module mUndoRedo


%typemap(csbody_derived) UndoRedo %{

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

%typemap(cscode) UndoRedo %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) UndoRedo %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor UndoRedo;

class UndoRedo : public Object {
public:
  UndoRedo();

%extend {

void create_action(const String& name, bool mergeable = false) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "create_action");
  const void* __args[2] = { &name, &mergeable };
  __method_bind->ptrcall($self, __args, NULL);
}

void commit_action() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "commit_action");
  __method_bind->ptrcall($self, NULL, NULL);
}

void add_do_method(Object* object, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_do_method");
  const void* __args[7] = { object, &method, &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_undo_method(Object* object, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_undo_method");
  const void* __args[7] = { object, &method, &arg0_, &arg1_, &arg2_, &arg3_, &arg4_ };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_do_property(Object* object, const String& property, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_do_property");
  const void* __args[3] = { object, &property, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_undo_property(Object* object, const String& property, const Variant& value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_undo_property");
  const void* __args[3] = { object, &property, &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_do_reference(Object* object) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_do_reference");
  const void* __args[1] = { object };
  __method_bind->ptrcall($self, __args, NULL);
}

void add_undo_reference(Object* object) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "add_undo_reference");
  const void* __args[1] = { object };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_history() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "clear_history");
  __method_bind->ptrcall($self, NULL, NULL);
}

String get_current_action_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "get_current_action_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_version() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("UndoRedo", "get_version");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
