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
  %extend {
    void create_action(const String& name, bool mergeable = false) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("create_action", name, mergeable);
    }
  }
  %extend {
    void commit_action() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("commit_action");
    }
  }
  %extend {
    void add_do_method(Object* object, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(method);
Variant arg_2_ = Variant(arg0_);
Variant arg_3_ = Variant(arg1_);
Variant arg_4_ = Variant(arg2_);
Variant arg_5_ = Variant(arg3_);
Variant arg_6_ = Variant(arg4_);
Variant *args_[7] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_ };
$self->call("add_do_method", (const Variant **) args_, 7, err);
    }
  }
  %extend {
    void add_undo_method(Object* object, const String& method, const Variant& arg0_ = Variant(), const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(method);
Variant arg_2_ = Variant(arg0_);
Variant arg_3_ = Variant(arg1_);
Variant arg_4_ = Variant(arg2_);
Variant arg_5_ = Variant(arg3_);
Variant arg_6_ = Variant(arg4_);
Variant *args_[7] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_ };
$self->call("add_undo_method", (const Variant **) args_, 7, err);
    }
  }
  %extend {
    void add_do_property(Object* object, const String& property, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_do_property", object, property, value);
    }
  }
  %extend {
    void add_undo_property(Object* object, const String& property, const Variant& value) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_undo_property", object, property, value);
    }
  }
  %extend {
    void add_do_reference(Object* object) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_do_reference", object);
    }
  }
  %extend {
    void add_undo_reference(Object* object) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("add_undo_reference", object);
    }
  }
  %extend {
    void clear_history() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("clear_history");
    }
  }
  %extend {
    String get_current_action_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_action_name");
    }
  }
  %extend {
    int get_version() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_version");
    }
  }
  UndoRedo();

};
