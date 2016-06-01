/* mEditorImportPlugin.i */
%module mEditorImportPlugin


%typemap(csbody_derived) EditorImportPlugin %{

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

%typemap(cscode) EditorImportPlugin %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorImportPlugin %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor EditorImportPlugin;

class EditorImportPlugin : public Reference {
public:
  %extend {
    bool can_reimport_multiple_files() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("can_reimport_multiple_files");
    }
  }
  %extend {
    RawArray custom_export(const String& path, EditorExportPlatform* platform) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("custom_export", path, platform);
    }
  }
  %extend {
    String get_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_name");
    }
  }
  %extend {
    String get_visible_name() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_visible_name");
    }
  }
  %extend {
    int import(const String& path, Ref<ResourceImportMetadata> from) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("import", path, from);
    }
  }
  %extend {
    void import_dialog(const String& from) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("import_dialog", from);
    }
  }
  %extend {
    void import_from_drop(const StringArray& files, const String& dest_path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("import_from_drop", files, dest_path);
    }
  }
  %extend {
    void reimport_multiple_files(const StringArray& files) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("reimport_multiple_files", files);
    }
  }
  %extend {
    String validate_source_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("validate_source_path", path);
    }
  }
  %extend {
    String expand_source_path(const String& path) {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("expand_source_path", path);
    }
  }
  EditorImportPlugin();

};
