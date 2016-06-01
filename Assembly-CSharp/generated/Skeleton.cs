/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 3.0.2
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

namespace GodotEngine {

public class Skeleton : Spatial {
  public static readonly int NOTIFICATION_UPDATE_SKELETON = 50;

  private global::System.Runtime.InteropServices.HandleRef swigCPtr;
  
  internal Skeleton(global::System.IntPtr cPtr, bool cMemoryOwn) : base(GodotEnginePINVOKE.Skeleton_SWIGUpcast(cPtr), cMemoryOwn) {
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }  
  
  protected Skeleton(bool cMemoryOwn) : base(cMemoryOwn) {}
  
  new internal void internal_init(global::System.IntPtr cPtr) {
    base.internal_init(GodotEnginePINVOKE.Skeleton_SWIGUpcast(cPtr));
    swigCPtr = new global::System.Runtime.InteropServices.HandleRef(this, cPtr);
  }
  
  internal static global::System.Runtime.InteropServices.HandleRef getCPtr(Skeleton obj) {
    return (obj == null) ? new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero) : obj.swigCPtr;
  }

  public override void Dispose() {
    lock(this) {
      if (swigCPtr.Handle != global::System.IntPtr.Zero) {
        if (swigCMemOwn) {
          swigCMemOwn = false;
          throw new global::System.MethodAccessException("C++ destructor does not have public access");
        }
        swigCPtr = new global::System.Runtime.InteropServices.HandleRef(null, global::System.IntPtr.Zero);
      }
      global::System.GC.SuppressFinalize(this);
      base.Dispose();
    }
  }



  public void add_bone(string name) {
    GodotEnginePINVOKE.Skeleton_add_bone(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public int find_bone(string name) {
    int ret = GodotEnginePINVOKE.Skeleton_find_bone(swigCPtr, name);
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
    return ret;
  }

  public string get_bone_name(int bone_idx) {
    string ret = GodotEnginePINVOKE.Skeleton_get_bone_name(swigCPtr, bone_idx);
    return ret;
  }

  public int get_bone_parent(int bone_idx) {
    int ret = GodotEnginePINVOKE.Skeleton_get_bone_parent(swigCPtr, bone_idx);
    return ret;
  }

  public void set_bone_parent(int bone_idx, int parent_idx) {
    GodotEnginePINVOKE.Skeleton_set_bone_parent(swigCPtr, bone_idx, parent_idx);
  }

  public int get_bone_count() {
    int ret = GodotEnginePINVOKE.Skeleton_get_bone_count(swigCPtr);
    return ret;
  }

  public void unparent_bone_and_rest(int bone_idx) {
    GodotEnginePINVOKE.Skeleton_unparent_bone_and_rest(swigCPtr, bone_idx);
  }

  public SWIGTYPE_p_Transform get_bone_rest(int bone_idx) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.Skeleton_get_bone_rest(swigCPtr, bone_idx), true);
    return ret;
  }

  public void set_bone_rest(int bone_idx, SWIGTYPE_p_Transform rest) {
    GodotEnginePINVOKE.Skeleton_set_bone_rest(swigCPtr, bone_idx, SWIGTYPE_p_Transform.getCPtr(rest));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_bone_disable_rest(int bone_idx, bool disable) {
    GodotEnginePINVOKE.Skeleton_set_bone_disable_rest(swigCPtr, bone_idx, disable);
  }

  public bool is_bone_rest_disabled(int bone_idx) {
    bool ret = GodotEnginePINVOKE.Skeleton_is_bone_rest_disabled(swigCPtr, bone_idx);
    return ret;
  }

  public void bind_child_node_to_bone(int bone_idx, Node node) {
    GodotEnginePINVOKE.Skeleton_bind_child_node_to_bone(swigCPtr, bone_idx, Node.getCPtr(node));
  }

  public void unbind_child_node_from_bone(int bone_idx, Node node) {
    GodotEnginePINVOKE.Skeleton_unbind_child_node_from_bone(swigCPtr, bone_idx, Node.getCPtr(node));
  }

  public SWIGTYPE_p_Array get_bound_child_nodes_to_bone(int bone_idx) {
    SWIGTYPE_p_Array ret = new SWIGTYPE_p_Array(GodotEnginePINVOKE.Skeleton_get_bound_child_nodes_to_bone(swigCPtr, bone_idx), true);
    return ret;
  }

  public void clear_bones() {
    GodotEnginePINVOKE.Skeleton_clear_bones(swigCPtr);
  }

  public SWIGTYPE_p_Transform get_bone_pose(int bone_idx) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.Skeleton_get_bone_pose(swigCPtr, bone_idx), true);
    return ret;
  }

  public void set_bone_pose(int bone_idx, SWIGTYPE_p_Transform pose) {
    GodotEnginePINVOKE.Skeleton_set_bone_pose(swigCPtr, bone_idx, SWIGTYPE_p_Transform.getCPtr(pose));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public void set_bone_global_pose(int bone_idx, SWIGTYPE_p_Transform pose) {
    GodotEnginePINVOKE.Skeleton_set_bone_global_pose(swigCPtr, bone_idx, SWIGTYPE_p_Transform.getCPtr(pose));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Transform get_bone_global_pose(int bone_idx) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.Skeleton_get_bone_global_pose(swigCPtr, bone_idx), true);
    return ret;
  }

  public SWIGTYPE_p_Transform get_bone_custom_pose(int bone_idx) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.Skeleton_get_bone_custom_pose(swigCPtr, bone_idx), true);
    return ret;
  }

  public void set_bone_custom_pose(int bone_idx, SWIGTYPE_p_Transform custom_pose) {
    GodotEnginePINVOKE.Skeleton_set_bone_custom_pose(swigCPtr, bone_idx, SWIGTYPE_p_Transform.getCPtr(custom_pose));
    if (GodotEnginePINVOKE.SWIGPendingException.Pending) throw GodotEnginePINVOKE.SWIGPendingException.Retrieve();
  }

  public SWIGTYPE_p_Transform get_bone_transform(int bone_idx) {
    SWIGTYPE_p_Transform ret = new SWIGTYPE_p_Transform(GodotEnginePINVOKE.Skeleton_get_bone_transform(swigCPtr, bone_idx), true);
    return ret;
  }

  public Skeleton() : this(false) {
    if (swigCPtr.Handle == global::System.IntPtr.Zero) {
      internal_init(GodotEnginePINVOKE.new_Skeleton());
      InternalHelpers.TieManagedToUnmanaged(this, swigCPtr.Handle);
    }
  }

}

}
