/* mNavigationPolygonInstance.i */
%module mNavigationPolygonInstance


%typemap(csbody_derived) NavigationPolygonInstance %{

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

%typemap(cscode) NavigationPolygonInstance %{

%}

%typemap(csconstruct, excode=SWIGEXCODE) NavigationPolygonInstance %{: this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init($imcall);
    }$excode
  }
%}

%nodefaultdtor NavigationPolygonInstance;

class NavigationPolygonInstance : public Node2D {
public:
  %extend {
    void set_navigation_polygon(Ref<NavigationPolygon> navpoly) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_navigation_polygon", navpoly);
    }
  }
  %extend {
    Ref<NavigationPolygon> get_navigation_polygon() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("get_navigation_polygon").operator Object *()->cast_to<NavigationPolygon>();
    }
  }
  %extend {
    void set_enabled(bool enabled) {
  Object* self_obj = static_cast<Object*>($self);
  self_obj->call("set_enabled", enabled);
    }
  }
  %extend {
    bool is_enabled() {
  Object* self_obj = static_cast<Object*>($self);
  return self_obj->call("is_enabled");
    }
  }
  NavigationPolygonInstance();

};
