/* mTransform.i */
%module mTransform

%typemap(ctype, out="Transform") Transform "Transform*"
%typemap(out, null="Transform()") Transform "return $1;"
%typemap(ctype, out="Transform") const Transform & "Transform*"
%typemap(out, null="Transform()") const Transform & "return $1;"

%typemap(csin) Transform "ref $csinput"
%typemap(imtype, out="Transform") Transform "ref Transform"
%typemap(cstype) Transform "Transform"
%typemap(csout, excode=SWIGEXCODE) Transform {
    Transform ret = $imcall;$excode
    return ret;
}
%typemap(csin) const Transform & "ref $csinput"
%typemap(imtype, out="Transform") const Transform & "ref Transform"
%typemap(cstype) const Transform & "Transform"
%typemap(csout, excode=SWIGEXCODE) const Transform & {
    Transform ret = $imcall;$excode
    return ret;
}

class Transform {

};

