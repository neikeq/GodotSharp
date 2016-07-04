/* mRange.i */
%module mRange


%typemap(csbody_derived) Range %{

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

%typemap(cscode) Range %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) Range %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor Range;

class Range : public Control {
public:
  Range();

%extend {

float get_val() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_val");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_value() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_value");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_min() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_min");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_max() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_max");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_step() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_step");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_page() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_page");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

float get_unit_value() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "get_unit_value");
  float ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_val(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_val");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_value(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_value");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_min(float minimum) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_min");
  const void* __args[1] = { &minimum };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_max(float maximum) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_max");
  const void* __args[1] = { &maximum };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_step(float step) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_step");
  const void* __args[1] = { &step };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_page(float pagesize) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_page");
  const void* __args[1] = { &pagesize };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_unit_value(float value) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_unit_value");
  const void* __args[1] = { &value };
  __method_bind->ptrcall($self, __args, NULL);
}

void set_rounded_values(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_rounded_values");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_rounded_values() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "is_rounded_values");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void set_exp_unit_value(bool enabled) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "set_exp_unit_value");
  const void* __args[1] = { &enabled };
  __method_bind->ptrcall($self, __args, NULL);
}

bool is_unit_value_exp() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "is_unit_value_exp");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void share(Object* with) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "share");
  const void* __args[1] = { with };
  __method_bind->ptrcall($self, __args, NULL);
}

void unshare() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("Range", "unshare");
  __method_bind->ptrcall($self, NULL, NULL);
}

}


};
