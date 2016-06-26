/* mXMLParser.i */
%module mXMLParser

template<class XMLParser> class Ref;%template() Ref<XMLParser>;
%feature("novaluewrapper") Ref<XMLParser>;


%typemap(csbody_derived) XMLParser %{
  public static readonly int NODE_NONE = 0;
  public static readonly int NODE_ELEMENT = 1;
  public static readonly int NODE_ELEMENT_END = 2;
  public static readonly int NODE_TEXT = 3;
  public static readonly int NODE_COMMENT = 4;
  public static readonly int NODE_CDATA = 5;
  public static readonly int NODE_UNKNOWN = 6;

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

%typemap(cscode) XMLParser %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) XMLParser %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor XMLParser;

class XMLParser : public Reference {
public:
  XMLParser();

%extend {

int read() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "read");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_node_type() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_node_type");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_node_name() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_node_name");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_node_data() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_node_data");
  String ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_node_offset() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_node_offset");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_attribute_count() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_attribute_count");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

String get_attribute_name(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_attribute_name");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_attribute_value(int idx) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_attribute_value");
  const void* __args[1] = { &idx };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool has_attribute(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "has_attribute");
  const void* __args[1] = { &name };
  bool ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_named_attribute_value(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_named_attribute_value");
  const void* __args[1] = { &name };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

String get_named_attribute_value_safe(const String& name) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_named_attribute_value_safe");
  const void* __args[1] = { &name };
  String ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

bool is_empty() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "is_empty");
  bool ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

int get_current_line() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "get_current_line");
  int ret;
  __method_bind->ptrcall($self, NULL, &ret);
  return ret;
}

void skip_section() {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "skip_section");
  __method_bind->ptrcall($self, NULL, NULL);
}

int seek(int pos) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "seek");
  const void* __args[1] = { &pos };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int open(const String& file) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "open");
  const void* __args[1] = { &file };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

int open_buffer(const RawArray& buffer) {
  static MethodBind* __method_bind = NULL;
  if (!__method_bind)
    __method_bind = ObjectTypeDB::get_method("XMLParser", "open_buffer");
  const void* __args[1] = { &buffer };
  int ret;
  __method_bind->ptrcall($self, __args, &ret);
  return ret;
}

~XMLParser() {
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
