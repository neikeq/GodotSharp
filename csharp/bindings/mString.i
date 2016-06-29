// Based on swig's wchar module, adapted for Godot

%include <mChar.i>

%naturalvar String;

class String;

// String
%typemap(ctype, out="void *") String "void *"
%typemap(imtype, inattributes="[global::System.Runtime.InteropServices.MarshalAs(global::System.Runtime.InteropServices.UnmanagedType.LPWStr)]") String "string"
%typemap(cstype) String "string"

%typemap(in, canthrow=1) String
%{
  if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
  }
  String $1_str;
  gdstring_from_utf16($1_str, (const uint16_t*)$input);
  $1 = &$1_str;
 %}
%typemap(out) String %{
  CharString result_utf8 = $1.utf8();
  $result = csharp_gdstring_callback(result_utf8.get_data(), result_utf8.length());
%}

%typemap(csin) String "$csinput"
%typemap(csout, excode=SWIGEXCODE) String {
    string ret = $imcall;$excode
    return ret;
  }

%typemap(typecheck) String = char *;

%typemap(throws, canthrow=1) String
%{
  CharString throws_result_utf8 = String($1).utf8();
  $result = csharp_gdstring_callback(throws_result_utf8.get_data(), throws_result_utf8.length());
  return $null;
%}

// const String &
%typemap(ctype, out="void *") const String & "char *"
%typemap(imtype, inattributes="[global::System.Runtime.InteropServices.MarshalAs(global::System.Runtime.InteropServices.UnmanagedType.LPWStr)]") const String & "string"
%typemap(cstype) const String & "string"

%typemap(in, canthrow=1) const String &
%{
  if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
  }
  String $1_str;
  gdstring_from_utf16($1_str, (const uint16_t*)$input);
  $1 = &$1_str;
%}
%typemap(out) const String & %{
  CharString result_utf8 = $1.utf8();
  $result = csharp_gdstring_callback(result_utf8.get_data(), result_utf8.length());
%}

%typemap(csin) const String & "$csinput"
%typemap(csout, excode=SWIGEXCODE) const String & {
    string ret = $imcall;$excode
    return ret;
  }

%typemap(csvarin, excode=SWIGEXCODE2) const String & %{
    set {
      $imcall;$excode
    } %}
%typemap(csvarout, excode=SWIGEXCODE2) const String & %{
    get {
      string ret = $imcall;$excode
      return ret;
    }
%}

%typemap(typecheck) const String & = char *;

%typemap(throws, canthrow=1) const String &
%{
  CharString throws_result_utf8 = String($1).utf8();
  $result = csharp_gdstring_callback(throws_result_utf8.get_data(), throws_result_utf8.length());
  return $null;
%}
