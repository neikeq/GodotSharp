/* mEditorImportPlugin.i */
%module mEditorImportPlugin

%typemap(ctype, out="EditorImportPlugin*") Ref<EditorImportPlugin> "EditorImportPlugin*"
%typemap(out, null="NULL") Ref<EditorImportPlugin> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EditorImportPlugin> "EditorImportPlugin.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorImportPlugin> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorImportPlugin> "EditorImportPlugin"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorImportPlugin> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorImportPlugin ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorImportPlugin;$excode
    return ret;
}

template<class EditorImportPlugin> class Ref;%template() Ref<EditorImportPlugin>;
%feature("novaluewrapper") Ref<EditorImportPlugin>;


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
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
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
  %extend {
    ~EditorImportPlugin() {
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
