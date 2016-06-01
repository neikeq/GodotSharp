/* mVariant.i */
%module mNodePath

class NodePath {
public:
  %typemap(cscode) NodePath %{  
  // Implicit constructors
  
  public static implicit operator NodePath(string from) {
    return new NodePath(from);
  }
  %}
  NodePath();
  NodePath(const String& p_path);
  ~NodePath();
};
