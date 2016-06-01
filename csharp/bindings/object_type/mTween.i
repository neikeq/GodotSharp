/* mTween.i */
%module mTween


%typemap(csbody_derived) Tween %{
  public static readonly int TWEEN_PROCESS_FIXED = 0;
  public static readonly int TWEEN_PROCESS_IDLE = 1;
  public static readonly int TRANS_LINEAR = 0;
  public static readonly int TRANS_SINE = 1;
  public static readonly int TRANS_QUINT = 2;
  public static readonly int TRANS_QUART = 3;
  public static readonly int TRANS_QUAD = 4;
  public static readonly int TRANS_EXPO = 5;
  public static readonly int TRANS_ELASTIC = 6;
  public static readonly int TRANS_CUBIC = 7;
  public static readonly int TRANS_CIRC = 8;
  public static readonly int TRANS_BOUNCE = 9;
  public static readonly int TRANS_BACK = 10;
  public static readonly int EASE_IN = 0;
  public static readonly int EASE_OUT = 1;
  public static readonly int EASE_IN_OUT = 2;
  public static readonly int EASE_OUT_IN = 3;

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

%typemap(cscode) Tween %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Tween %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor Tween;

class Tween : public Node {
public:
  %extend {
    bool is_active() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_active");
    }
  }
  %extend {
    void set_active(bool active) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_active", active);
    }
  }
  %extend {
    bool is_repeat() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_repeat");
    }
  }
  %extend {
    void set_repeat(bool repeat) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_repeat", repeat);
    }
  }
  %extend {
    void set_speed(float speed) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_speed", speed);
    }
  }
  %extend {
    float get_speed() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_speed");
    }
  }
  %extend {
    void set_tween_process_mode(int mode) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_tween_process_mode", mode);
    }
  }
  %extend {
    int get_tween_process_mode() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_tween_process_mode");
    }
  }
  %extend {
    bool start() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("start");
    }
  }
  %extend {
    bool reset(Object* object, const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("reset", object, key);
    }
  }
  %extend {
    bool reset_all() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("reset_all");
    }
  }
  %extend {
    bool stop(Object* object, const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("stop", object, key);
    }
  }
  %extend {
    bool stop_all() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("stop_all");
    }
  }
  %extend {
    bool resume(Object* object, const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resume", object, key);
    }
  }
  %extend {
    bool resume_all() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("resume_all");
    }
  }
  %extend {
    bool remove(Object* object, const String& key) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("remove", object, key);
    }
  }
  %extend {
    bool remove_all() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("remove_all");
    }
  }
  %extend {
    bool seek(float time) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("seek", time);
    }
  }
  %extend {
    float tell() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("tell");
    }
  }
  %extend {
    float get_runtime() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_runtime");
    }
  }
  %extend {
    bool interpolate_property(Object* object, const String& property, const Variant& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(property);
Variant arg_2_ = Variant(initial_val);
Variant arg_3_ = Variant(final_val);
Variant arg_4_ = Variant(times_in_sec);
Variant arg_5_ = Variant(trans_type);
Variant arg_6_ = Variant(ease_type);
Variant arg_7_ = Variant(delay);
Variant *args_[8] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_ };
return $self->call("interpolate_property", (const Variant **) args_, 8, err);
    }
  }
  %extend {
    bool interpolate_method(Object* object, const String& method, const Variant& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(method);
Variant arg_2_ = Variant(initial_val);
Variant arg_3_ = Variant(final_val);
Variant arg_4_ = Variant(times_in_sec);
Variant arg_5_ = Variant(trans_type);
Variant arg_6_ = Variant(ease_type);
Variant arg_7_ = Variant(delay);
Variant *args_[8] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_ };
return $self->call("interpolate_method", (const Variant **) args_, 8, err);
    }
  }
  %extend {
    bool interpolate_callback(Object* object, float times_in_sec, const String& callback, const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(times_in_sec);
Variant arg_2_ = Variant(callback);
Variant arg_3_ = Variant(arg1_);
Variant arg_4_ = Variant(arg2_);
Variant arg_5_ = Variant(arg3_);
Variant arg_6_ = Variant(arg4_);
Variant arg_7_ = Variant(arg5_);
Variant *args_[8] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_ };
return $self->call("interpolate_callback", (const Variant **) args_, 8, err);
    }
  }
  %extend {
    bool interpolate_deferred_callback(Object* object, float times_in_sec, const String& callback, const Variant& arg1_ = Variant(), const Variant& arg2_ = Variant(), const Variant& arg3_ = Variant(), const Variant& arg4_ = Variant(), const Variant& arg5_ = Variant()) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(times_in_sec);
Variant arg_2_ = Variant(callback);
Variant arg_3_ = Variant(arg1_);
Variant arg_4_ = Variant(arg2_);
Variant arg_5_ = Variant(arg3_);
Variant arg_6_ = Variant(arg4_);
Variant arg_7_ = Variant(arg5_);
Variant *args_[8] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_ };
return $self->call("interpolate_deferred_callback", (const Variant **) args_, 8, err);
    }
  }
  %extend {
    bool follow_property(Object* object, const String& property, const Variant& initial_val, Object* target, const String& target_property, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(property);
Variant arg_2_ = Variant(initial_val);
Variant arg_3_ = Variant(target);
Variant arg_4_ = Variant(target_property);
Variant arg_5_ = Variant(times_in_sec);
Variant arg_6_ = Variant(trans_type);
Variant arg_7_ = Variant(ease_type);
Variant arg_8_ = Variant(delay);
Variant *args_[9] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_, &arg_8_ };
return $self->call("follow_property", (const Variant **) args_, 9, err);
    }
  }
  %extend {
    bool follow_method(Object* object, const String& method, const Variant& initial_val, Object* target, const String& target_method, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(method);
Variant arg_2_ = Variant(initial_val);
Variant arg_3_ = Variant(target);
Variant arg_4_ = Variant(target_method);
Variant arg_5_ = Variant(times_in_sec);
Variant arg_6_ = Variant(trans_type);
Variant arg_7_ = Variant(ease_type);
Variant arg_8_ = Variant(delay);
Variant *args_[9] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_, &arg_8_ };
return $self->call("follow_method", (const Variant **) args_, 9, err);
    }
  }
  %extend {
    bool targeting_property(Object* object, const String& property, Object* initial, const String& initial_val, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(property);
Variant arg_2_ = Variant(initial);
Variant arg_3_ = Variant(initial_val);
Variant arg_4_ = Variant(final_val);
Variant arg_5_ = Variant(times_in_sec);
Variant arg_6_ = Variant(trans_type);
Variant arg_7_ = Variant(ease_type);
Variant arg_8_ = Variant(delay);
Variant *args_[9] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_, &arg_8_ };
return $self->call("targeting_property", (const Variant **) args_, 9, err);
    }
  }
  %extend {
    bool targeting_method(Object* object, const String& method, Object* initial, const String& initial_method, const Variant& final_val, float times_in_sec, int trans_type, int ease_type, float delay = 0) {
  Variant::CallError err;
Variant arg_0_ = Variant(object);
Variant arg_1_ = Variant(method);
Variant arg_2_ = Variant(initial);
Variant arg_3_ = Variant(initial_method);
Variant arg_4_ = Variant(final_val);
Variant arg_5_ = Variant(times_in_sec);
Variant arg_6_ = Variant(trans_type);
Variant arg_7_ = Variant(ease_type);
Variant arg_8_ = Variant(delay);
Variant *args_[9] = { &arg_0_, &arg_1_, &arg_2_, &arg_3_, &arg_4_, &arg_5_, &arg_6_, &arg_7_, &arg_8_ };
return $self->call("targeting_method", (const Variant **) args_, 9, err);
    }
  }
  Tween();

};
