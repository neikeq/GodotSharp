/* mViewportSprite.i */
%module mViewportSprite

%typemap(out) ViewportSprite "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ViewportSprite* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }


%typemap(csbody_derived) ViewportSprite %{

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

%typemap(cscode) ViewportSprite %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) ViewportSprite %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }$excode
  }
%}

%nodefaultdtor ViewportSprite;

class ViewportSprite : public Node2D {
public:
  %extend {
    void set_viewport_path(const NodePath& path) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_viewport_path", path);
    }
  }
  %extend {
    NodePath get_viewport_path() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_viewport_path");
    }
  }
  %extend {
    void set_centered(bool centered) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_centered", centered);
    }
  }
  %extend {
    bool is_centered() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_centered");
    }
  }
  %extend {
    void set_offset(const Vector2& offset) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_offset", offset);
    }
  }
  %extend {
    Vector2 get_offset() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_offset");
    }
  }
  %extend {
    void set_modulate(const Color& modulate) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_modulate", modulate);
    }
  }
  %extend {
    Color get_modulate() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_modulate");
    }
  }
  ViewportSprite();

};
