/* mSpriteFrames.i */
%module mSpriteFrames

template<class SpriteFrames> class Ref;%template() Ref<SpriteFrames>;
%feature("novaluewrapper") Ref<SpriteFrames>;


%typemap(csbody_derived) SpriteFrames %{

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

%typemap(cscode) SpriteFrames %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) SpriteFrames %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor SpriteFrames;

class SpriteFrames : public Resource {
public:
  SpriteFrames();

%extend {

void add_animation(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "add_animation");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

bool has_animation(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "has_animation");
  const void* __args[1] = { &anim };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void remove_animation(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "remove_animation");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

void rename_animation(const String& anim, const String& newname) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "rename_animation");
  const void* __args[2] = { &anim, &newname };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_animation_speed(const String& anim, float speed) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "set_animation_speed");
  const void* __args[2] = { &anim, &speed };
  __method_bind->ptrcall($self, __args, NULL);
}

float get_animation_speed(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "get_animation_speed");
  const void* __args[1] = { &anim };
  float ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_animation_loop(const String& anim, bool loop) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "set_animation_loop");
  const void* __args[2] = { &anim, &loop };
  __method_bind->ptrcall($self, __args, NULL);
}

bool get_animation_loop(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "get_animation_loop");
  const void* __args[1] = { &anim };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void add_frame(const String& anim, Object* frame, int atpos = -1) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "add_frame");
  const void* __args[3] = { &anim, frame, &atpos };
  __method_bind->ptrcall($self, __args, NULL);
}

int get_frame_count(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "get_frame_count");
  const void* __args[1] = { &anim };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

Object* get_frame(const String& anim, int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "get_frame");
  const void* __args[2] = { &anim, &idx };
  Object* ret = NULL;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

void set_frame(const String& anim, int idx, Object* txt) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "set_frame");
  const void* __args[3] = { &anim, &idx, txt };
  __method_bind->ptrcall($self, __args, NULL);
}

void remove_frame(const String& anim, int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "remove_frame");
  const void* __args[2] = { &anim, &idx };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear(const String& anim) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "clear");
  const void* __args[1] = { &anim };
  __method_bind->ptrcall($self, __args, NULL);
}

void clear_all() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("SpriteFrames", "clear_all");
  __method_bind->ptrcall($self, NULL, NULL);
}

~SpriteFrames() {
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
