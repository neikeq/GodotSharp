/* mMatrix3.i */
%module mMatrix3

%typemap(ctype, out="Matrix3") Matrix3 "Matrix3*"
%typemap(out, null="Matrix3()") Matrix3 "return $1;"
%typemap(ctype, out="Matrix3") const Matrix3 & "Matrix3*"
%typemap(out, null="Matrix3()") const Matrix3 & "return $1;"

%typemap(csin) Matrix3 "ref $csinput"
%typemap(imtype, out="Matrix3") Matrix3 "ref Matrix3"
%typemap(cstype) Matrix3 "Matrix3"
%typemap(csout, excode=SWIGEXCODE) Matrix3 {
    Matrix3 ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Matrix3 & "ref $csinput"
%typemap(imtype, out="Matrix3") const Matrix3 & "ref Matrix3"
%typemap(cstype) const Matrix3 & "Matrix3"
%typemap(csout, excode=SWIGEXCODE) const Matrix3 & {
    Matrix3 ret = $imcall;$excode
    return ret;
}

class Matrix3 {

};

