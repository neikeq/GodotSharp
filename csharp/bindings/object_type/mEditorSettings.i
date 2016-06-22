/* mEditorSettings.i */
%module mEditorSettings

%typemap(ctype, out="EditorSettings*") Ref<EditorSettings> "EditorSettings*"
%typemap(out, null="NULL") Ref<EditorSettings> %{
  $result = $1.ptr();
  $result->reference();
%}
%typemap(csin) Ref<EditorSettings> "EditorSettings.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorSettings> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorSettings> "EditorSettings"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorSettings> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorSettings ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorSettings;$excode
    return ret;
}

template<class EditorSettings> class Ref;%template() Ref<EditorSettings>;
%feature("novaluewrapper") Ref<EditorSettings>;


%typemap(csbody_derived) EditorSettings %{

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

%typemap(cscode) EditorSettings %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) EditorSettings %{: this(true) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor EditorSettings;

class EditorSettings : public Resource {
public:
  %extend {
    void erase(const String& property) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("erase", property);
    }
  }
  %extend {
    String get_settings_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_settings_path");
    }
  }
  %extend {
    String get_project_settings_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_project_settings_path");
    }
  }
  %extend {
    void set_favorite_dirs(const StringArray& dirs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_favorite_dirs", dirs);
    }
  }
  %extend {
    StringArray get_favorite_dirs() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_favorite_dirs");
    }
  }
  %extend {
    void set_recent_dirs(const StringArray& dirs) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_recent_dirs", dirs);
    }
  }
  %extend {
    StringArray get_recent_dirs() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_recent_dirs");
    }
  }
  EditorSettings();
  %extend {
    ~EditorSettings() {
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
