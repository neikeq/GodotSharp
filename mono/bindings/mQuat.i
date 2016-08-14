/* mQuat.i */
%module mQuat

%typemap(ctype, out="Quat") Quat "Quat*"
%typemap(out, null="Quat()") Quat "return $1;"
%typemap(ctype, out="Quat") const Quat & "Quat*"
%typemap(out, null="Quat()") const Quat & "return $1;"

%typemap(csin) Quat "ref $csinput"
%typemap(imtype, out="Quat") Quat "ref Quat"
%typemap(cstype) Quat "Quat"
%typemap(csout, excode=SWIGEXCODE) Quat {
    Quat ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Quat & "ref $csinput"
%typemap(imtype, out="Quat") const Quat & "ref Quat"
%typemap(cstype) const Quat & "Quat"
%typemap(csout, excode=SWIGEXCODE) const Quat & {
    Quat ret = $imcall;$excode
    return ret;
}

class Quat {

};

