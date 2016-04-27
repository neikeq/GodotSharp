// wchar_t
%typemap(ctype) wchar_t "wchar_t"
%typemap(imtype) wchar_t "char"
%typemap(cstype) wchar_t "char"

%typemap(csin) wchar_t "$csinput"
%typemap(csout, excode=SWIGEXCODE) wchar_t {
    char ret = $imcall;$excode
    return ret;
  }
%typemap(csvarin, excode=SWIGEXCODE2) wchar_t %{
    set {
      $imcall;$excode
    } %}
%typemap(csvarout, excode=SWIGEXCODE2) wchar_t %{
    get {
      char ret = $imcall;$excode
      return ret;
    } %}

%typemap(in) wchar_t %{ $1 = ($1_ltype)$input; %}
%typemap(out) wchar_t %{ $result = (wchar_t)$1; %}

%typemap(typecheck) wchar_t = char;

// wchar_t *
%typemap(ctype) wchar_t * "wchar_t *"
%typemap(imtype, inattributes="[global::System.Runtime.InteropServices.MarshalAs(global::System.Runtime.InteropServices.UnmanagedType.LPWStr)]", out="global::System.IntPtr" ) wchar_t * "string"
%typemap(cstype) wchar_t * "string"

%typemap(csin) wchar_t * "$csinput"
%typemap(csout, excode=SWIGEXCODE) wchar_t * {
    string ret = global::System.Runtime.InteropServices.Marshal.PtrToStringUni($imcall);$excode
    return ret;
  }
%typemap(csvarin, excode=SWIGEXCODE2) wchar_t * %{
    set {
      $imcall;$excode
    } %}
%typemap(csvarout, excode=SWIGEXCODE2) wchar_t * %{
    get {
      string ret = $imcall;$excode
      return ret;
    } %}

%typemap(in) wchar_t * %{ $1 = ($1_ltype)$input; %}
%typemap(out) wchar_t * %{ $result = (wchar_t *)$1; %}

%typemap(typecheck) wchar_t * = char *;
