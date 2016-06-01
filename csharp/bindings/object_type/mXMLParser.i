/* mXMLParser.i */
%module mXMLParser


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
  %extend {
    int read() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("read");
    }
  }
  %extend {
    int get_node_type() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_type");
    }
  }
  %extend {
    String get_node_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_name");
    }
  }
  %extend {
    String get_node_data() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_data");
    }
  }
  %extend {
    int get_node_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_node_offset");
    }
  }
  %extend {
    int get_attribute_count() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_attribute_count");
    }
  }
  %extend {
    String get_attribute_name(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_attribute_name", idx);
    }
  }
  %extend {
    String get_attribute_value(int idx) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_attribute_value", idx);
    }
  }
  %extend {
    bool has_attribute(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("has_attribute", name);
    }
  }
  %extend {
    String get_named_attribute_value(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_named_attribute_value", name);
    }
  }
  %extend {
    String get_named_attribute_value_safe(const String& name) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_named_attribute_value_safe", name);
    }
  }
  %extend {
    bool is_empty() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_empty");
    }
  }
  %extend {
    int get_current_line() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_current_line");
    }
  }
  %extend {
    void skip_section() {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("skip_section");
    }
  }
  %extend {
    int seek(int pos) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("seek", pos);
    }
  }
  %extend {
    int open(const String& file) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open", file);
    }
  }
  %extend {
    int open_buffer(const RawArray& buffer) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("open_buffer", buffer);
    }
  }
  XMLParser();

};
