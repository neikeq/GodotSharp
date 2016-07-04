/* mVariant.i */
%module mVariant

%rename(operator_to_bool) Variant::operator bool() const;
%rename(operator_to_int) Variant::operator int() const;
%rename(operator_to_float) Variant::operator float() const;
%rename(operator_to_String) Variant::operator String() const;
%rename(operator_to_Vector2) Variant::operator Vector2() const;
%rename(operator_to_Matrix32) Variant::operator Matrix32() const;
%rename(operator_to_Object) Variant::operator Object*() const;
%rename(operator_to_Node) Variant::operator Node*() const;
%rename(operator_to_Control) Variant::operator Control*() const;

class Variant {
public:
  operator bool() const;
  operator int() const;
  operator float() const;
  operator String() const;
  operator Vector2() const;
  operator Matrix32() const;
  operator Object*() const;
  operator Node*() const;
  operator Control*() const;
  %typemap(cscode) Variant %{
  // Implicit conversions
  
  public static implicit operator bool(Variant from) {
    return from.operator_to_bool();
  }
  
  public static implicit operator int(Variant from) {
    return from.operator_to_int();
  }
  
  public static implicit operator float(Variant from) {
    return from.operator_to_float();
  }
  
  public static implicit operator Vector2(Variant from) {
    return from.operator_to_Vector2();
  }
  
  public static implicit operator Matrix32(Variant from) {
    return from.operator_to_Matrix32();
  }
  
  public static implicit operator Object(Variant from) {
    return from.operator_to_Object();
  }
  
  public static implicit operator Node(Variant from) {
    return from.operator_to_Node();
  }
  
  public static implicit operator Control(Variant from) {
    return from.operator_to_Control();
  }
  
  // Implicit constructors
  
  public static implicit operator Variant(bool from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(int from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(float from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(Vector2 from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(Matrix32 from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(string from) {
    return new Variant(from);
  }
  
  public static implicit operator Variant(Object from) {
    return new Variant(from);
  }
  %}
  Variant();
  Variant(bool p_bool);
  Variant(int o_int);
  Variant(float p_float);
  Variant(const String& p_string);
  Variant(const Object* p_object);
  Variant(const Matrix32& p_transform);
  Variant(const Vector2& p_transform);
  ~Variant();
};
