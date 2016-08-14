/* mMatrix32.i */
%module mMatrix32

%typemap(ctype, out="Matrix32") Matrix32 "Matrix32*"
%typemap(out, null="Matrix32()") Matrix32 "return $1;"
%typemap(ctype, out="Matrix32") const Matrix32 & "Matrix32*"
%typemap(out, null="Matrix32()") const Matrix32 & "return $1;"

%typemap(csin) Matrix32 "ref $csinput"
%typemap(imtype, out="Matrix32") Matrix32 "ref Matrix32"
%typemap(cstype) Matrix32 "Matrix32"
%typemap(csout, excode=SWIGEXCODE) Matrix32 {
    Matrix32 ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Matrix32 & "ref $csinput"
%typemap(imtype, out="Matrix32") const Matrix32 & "ref Matrix32"
%typemap(cstype) const Matrix32 & "Matrix32"
%typemap(csout, excode=SWIGEXCODE) const Matrix32 & {
    Matrix32 ret = $imcall;$excode
    return ret;
}

class Matrix32 {

};

