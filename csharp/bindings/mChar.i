// Based on swig's wchar module.

#if !defined(CSHARP_GDSTRING_HELPER_)
#define CSHARP_GDSTRING_HELPER_
%insert(runtime) %{
/* Callback for returning godot strings to C# without leaking memory */
typedef void * (SWIGSTDCALL* CSharpGDStringHelperCallback)(const char *, int);
static CSharpGDStringHelperCallback csharp_gdstring_callback = NULL;

void gdstring_from_utf16(String& r_str, const uint16_t *p_cstr)
{
	int len=0;
	const uint16_t *ptr=p_cstr;
	while (*(ptr++)!=0)
		len++;

	if (len==0) {

		r_str.resize(0);
		return;
	}

	r_str.resize(len+1); // include 0

	CharType *dst = r_str.ptr();

	for (int i=0;i<len+1;i++) {

		dst[i]=p_cstr[i];
	}
}
%}

%pragma(csharp) imclasscode=%{
  protected class GodotStringHelper {

    public delegate string GodotStringDelegate(global::System.IntPtr begin, int length);
    static GodotStringDelegate utf8Delegate = new GodotStringDelegate(Utf8PtrToString);

    [global::System.Runtime.InteropServices.DllImport("$dllimport", EntryPoint="RegisterGodotStringCallback_$module")]
    public static extern void RegisterGodotStringCallback_$module(GodotStringDelegate utf8Delegate);

    static string Utf8PtrToString(global::System.IntPtr ptr, int length) {
      if (ptr == global::System.IntPtr.Zero)
        return null;

      byte[] buff = new byte[length];
      System.Runtime.InteropServices.Marshal.Copy(ptr, buff, 0, length);
      return System.Text.UTF8Encoding.UTF8.GetString(buff);
    }

    static GodotStringHelper() {
      RegisterGodotStringCallback_$module(utf8Delegate);
    }
  }

  static protected GodotStringHelper gdStringCallback = new GodotStringHelper();
%}

%insert(runtime) %{
#ifdef __cplusplus
extern "C"
#endif
SWIGEXPORT void SWIGSTDCALL RegisterGodotStringCallback_$module(CSharpGDStringHelperCallback callback) {
  csharp_gdstring_callback = callback;
}
%}
#endif // CSHARP_GDSTRING_HELPER_

