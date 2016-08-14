/* mVector3.i */
%module mVector3

%typemap(ctype, out="Vector3") Vector3 "Vector3*"
%typemap(out, null="Vector3()") Vector3 "return $1;"
%typemap(ctype, out="Vector3") const Vector3 & "Vector3*"
%typemap(out, null="Vector3()") const Vector3 & "return $1;"

%typemap(csin) Vector3 "ref $csinput"
%typemap(imtype, out="Vector3") Vector3 "ref Vector3"
%typemap(cstype) Vector3 "Vector3"
%typemap(csout, excode=SWIGEXCODE) Vector3 {
    Vector3 ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Vector3 & "ref $csinput"
%typemap(imtype, out="Vector3") const Vector3 & "ref Vector3"
%typemap(cstype) const Vector3 & "Vector3"
%typemap(csout, excode=SWIGEXCODE) const Vector3 & {
    Vector3 ret = $imcall;$excode
    return ret;
}

class Vector3 {

};

