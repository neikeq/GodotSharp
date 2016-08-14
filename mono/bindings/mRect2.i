/* mRect2.i */
%module mRect2

%typemap(ctype, out="Rect2") Rect2 "Rect2*"
%typemap(out, null="Rect2()") Rect2 "return $1;"
%typemap(ctype, out="Rect2") const Rect2 & "Rect2*"
%typemap(out, null="Rect2()") const Rect2 & "return $1;"

%typemap(csin) Rect2 "ref $csinput"
%typemap(imtype, out="Rect2") Rect2 "ref Rect2"
%typemap(cstype) Rect2 "Rect2"
%typemap(csout, excode=SWIGEXCODE) Rect2 {
    Rect2 ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Rect2 & "ref $csinput"
%typemap(imtype, out="Rect2") const Rect2 & "ref Rect2"
%typemap(cstype) const Rect2 & "Rect2"
%typemap(csout, excode=SWIGEXCODE) const Rect2 & {
    Rect2 ret = $imcall;$excode
    return ret;
}

class Rect2 {

};

