/* mVariant.i */
%module mVariant

%rename(operator_to_float) Variant::operator float() const;
%rename(operator_to_Object) Variant::operator Object*() const;
%rename(operator_to_Node) Variant::operator Node*() const;

class Variant {
public:
  operator float() const;
  operator Object*() const;
  operator Node*() const;
  //operator Control*() const;
  %typemap(cscode) Variant %{
  // Implicit conversions
  
  public static implicit operator float(Variant from) {
    return from.operator_to_float();
  }
  
  public static implicit operator Object(Variant from) {
    return from.operator_to_Object();
  }
  
  public static implicit operator Node(Variant from) {
    return from.operator_to_Node();
  }
  
  /*public static implicit operator Control(Variant from) {
    return from.operator_to_Control();
  }*/
  
  // Implicit constructors
  
  public static implicit operator Variant(float from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(Object from) {
    return new Variant(from);
  }
  %}
  Variant();
  Variant(const Object* p_object);
  Variant(float p_float);
  ~Variant();
};
