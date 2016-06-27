// Copy of swig's wstring.i, adapted for Godot's String

%include <wchar_t.i>

%naturalvar String;

class String;

// String
%typemap(ctype, out="void *") String "wchar_t *"
%typemap(imtype, inattributes="[global::System.Runtime.InteropServices.MarshalAs(global::System.Runtime.InteropServices.UnmanagedType.LPWStr)]") String "string"
%typemap(cstype) String "string"
%typemap(csdirectorin) String "$iminput"
%typemap(csdirectorout) String "$cscall"

%typemap(in, canthrow=1) String
%{ if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
  }
  $1 = $input; %}
%typemap(out) String %{ $result = SWIG_csharp_wstring_callback($1.c_str()); %}

%typemap(directorout, canthrow=1) String
%{ if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
   }
   $result = $input; %}

%typemap(directorin) String %{ $input = SWIG_csharp_wstring_callback($1.c_str()); %}

%typemap(csin) String "$csinput"
%typemap(csout, excode=SWIGEXCODE) String {
    string ret = $imcall;$excode
    return ret;
  }

%typemap(typecheck) String = wchar_t *;

%typemap(throws, canthrow=1) String
%{ String message = $1;
   SWIG_CSharpSetPendingException(SWIG_CSharpApplicationException, message.c_str());
   return $null; %}

// const String &
%typemap(ctype, out="void *") const String & "wchar_t *"
%typemap(imtype, inattributes="[global::System.Runtime.InteropServices.MarshalAs(global::System.Runtime.InteropServices.UnmanagedType.LPWStr)]") const String & "string"
%typemap(cstype) const String & "string"

%typemap(csdirectorin) const String & "$iminput"
%typemap(csdirectorout) const String & "$cscall"

%typemap(in, canthrow=1) const String &
%{ if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
   }
   String $1_str = $input;
   $1 = &$1_str; %}
%typemap(out) const String & %{ $result = SWIG_csharp_wstring_callback($1->c_str()); %}

%typemap(csin) const String & "$csinput"
%typemap(csout, excode=SWIGEXCODE) const String & {
    string ret = $imcall;$excode
    return ret;
  }

%typemap(directorout, canthrow=1, warning=SWIGWARN_TYPEMAP_THREAD_UNSAFE_MSG) const String &
%{ if (!$input) {
    SWIG_CSharpSetPendingExceptionArgument(SWIG_CSharpArgumentNullException, "null String", 0);
    return $null;
   }
   /* possible thread/reentrant code problem */
   static String $1_str;
   $1_str = $input;
   $result = &$1_str; %}

%typemap(directorin) const String & %{ $input = SWIG_csharp_wstring_callback($1.c_str()); %}

%typemap(csvarin, excode=SWIGEXCODE2) const String & %{
    set {
      $imcall;$excode
    } %}
%typemap(csvarout, excode=SWIGEXCODE2) const String & %{
    get {
      string ret = $imcall;$excode
      return ret;
    } %}

%typemap(typecheck) const String & = wchar_t *;

%typemap(throws, canthrow=1) const String &
%{ String message  = $1;
   SWIG_CSharpSetPendingException(SWIG_CSharpApplicationException, message.c_str());
   return $null; %}
