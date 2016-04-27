/* mVariant.i */
%module mVariant

%typemap(out) SWIGTYPE 
%{ $result = new $1_ltype((const $1_ltype &)$1); %}

%rename(operator_to_Object) Variant::operator Object*() const;
%rename(operator_to_Node) Variant::operator Node*() const;
%rename(operator_to_float) Variant::operator float() const;

class Variant {
public:
  operator float() const;
  operator Object*() const;
  operator Node*() const;
  %typemap(cscode) Variant %{
  // Implicit conversions
  
  public static implicit operator float(Variant v)
  {
    return v.operator_to_float();
  }
  
  public static implicit operator Object(Variant v)
  {
    return v.operator_to_Object();
  }
  
  public static implicit operator Node(Variant v)
  {
    return v.operator_to_Node();
  }
  
  // Implicit constructors
  
  public static implicit operator Variant(Object o)
  {
    return new Variant(o);
  }
  %}
  Variant();
  Variant(const Object* p_object);
  ~Variant();
};
