using System;
using System.Reflection;
using System.Runtime.CompilerServices;

namespace GodotEngine
{
	public class InternalHelpers
	{
		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		public extern static Object GetManagedObjectFor (IntPtr obj);


		// TODO Move this to C++
		public static global::System.Runtime.InteropServices.HandleRef VariantCall (object instance, MethodInfo methodInfo, Variant[] vargs)
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
		public static void VariantCallExpectVoid (object instance, MethodInfo methodInfo, Variant[] vargs)
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

