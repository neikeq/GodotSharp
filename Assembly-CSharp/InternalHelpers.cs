using System;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace GodotEngine
{
	internal class InternalHelpers
	{
		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		internal extern static Object UnmanagedGetManaged (IntPtr unmanaged);

		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		internal extern static Object TieManagedToUnmanaged (object managed, IntPtr unmanaged);

		// TODO Move this to C++
		internal static global::System.Runtime.InteropServices.HandleRef VariantCall (object instance, MethodInfo methodInfo, Variant[] vargs)
		{
			object[] args = new object[vargs.Length];

			ParameterInfo[] targetParams = methodInfo.GetParameters ();
			for (int i = 0; i < vargs.Length; i++) {
				foreach (MethodInfo mi in typeof(Variant).GetMethods()) {
					if (mi.Name == "op_Implicit") {
						if (mi.ReturnType == targetParams [i].ParameterType) {
							args [i] = mi.Invoke (null, new []{ vargs [i] });
							break;
						}
					}
				}
			}

			object result = methodInfo.Invoke (instance, args.Length > 0 ? args : null);
			return Variant.getCPtr ((Variant)result);
		}

		// TODO Move this to C++
		internal static void VariantCallExpectVoid (object instance, MethodInfo methodInfo, Variant[] vargs)
		{
			object[] args = new object[vargs.Length];

			ParameterInfo[] targetParams = methodInfo.GetParameters ();
			for (int i = 0; i < vargs.Length; i++) {
				foreach (MethodInfo mi in typeof(Variant).GetMethods()) {
					if (mi.Name == "op_Implicit") {
						if (mi.ReturnType == targetParams [i].ParameterType) {
							args [i] = mi.Invoke (null, new []{ vargs [i] });
							break;
						}
					}
				}
			}

			methodInfo.Invoke (instance, args.Length > 0 ? args : null);
		}
	}
}

