/* mMatrix32.i */
%module mMatrix32

%typemap(csin) Matrix32 "ref $csinput.elements"
%typemap(imtype, out="Matrix32.Internal") Matrix32 "ref Matrix32.Internal"
%typemap(cstype) Matrix32 "Matrix32"
%typemap(csout, excode=SWIGEXCODE) Matrix32 {
    Matrix32 ret = new Matrix32($imcall);$excode
    return ret;
}
%typemap(csin) const Matrix32 & "ref $csinput.elements"
%typemap(imtype, out="Matrix32.Internal") const Matrix32 & "ref Matrix32.Internal"
%typemap(cstype) const Matrix32 & "Matrix32"
%typemap(csout, excode=SWIGEXCODE) const Matrix32 & {
    Matrix32 ret = new Matrix32($imcall);$excode
    return ret;
}

class Matrix32 {

};

