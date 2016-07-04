/* mVector2.i */
%module mVector2

%typemap(ctype, out="Vector2") Vector2 "Vector2*"
%typemap(out, null="Vector2()") Vector2 "return $1;"
%typemap(ctype, out="Vector2") const Vector2 & "Vector2*"
%typemap(out, null="Vector2()") const Vector2 & "return $1;"

%typemap(csin) Vector2 "ref $csinput"
%typemap(imtype, out="Vector2") Vector2 "ref Vector2"
%typemap(cstype) Vector2 "Vector2"
%typemap(csout, excode=SWIGEXCODE) Vector2 {
    Vector2 ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Vector2 & "ref $csinput"
%typemap(imtype, out="Vector2") const Vector2 & "ref Vector2"
%typemap(cstype) const Vector2 & "Vector2"
%typemap(csout, excode=SWIGEXCODE) const Vector2 & {
    Vector2 ret = $imcall;$excode
    return ret;
}

class Vector2 {

};

