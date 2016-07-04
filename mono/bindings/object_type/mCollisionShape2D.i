/* mCollisionShape2D.i */
%module mCollisionShape2D


%typemap(csbody_derived) CollisionShape2D %{

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

%typemap(cscode) CollisionShape2D %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) CollisionShape2D %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor CollisionShape2D;

class CollisionShape2D : public Node2D {
public:
  CollisionShape2D();

%extend {

void set_shape(Object* shape) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionShape2D", "set_shape");
  const void* __args[1] = { shape };
  __method_bind->ptrcall($self, __args, NULL);
}

Object* get_shape() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionShape2D", "get_shape");
  Object* ret = NULL;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_trigger(bool enable) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionShape2D", "set_trigger");
  const void* __args[1] = { &enable };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_trigger() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionShape2D", "is_trigger");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_collision_object_shape_index() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("CollisionShape2D", "get_collision_object_shape_index");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

}


};
