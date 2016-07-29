using System;
using System.Runtime.CompilerServices;

namespace GodotEngine
{
	internal class InternalHelpers
	{
		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		internal extern static Object UnmanagedGetManaged (IntPtr unmanaged);

		[MethodImplAttribute (MethodImplOptions.InternalCall)]
		internal extern static void TieManagedToUnmanaged (object managed, IntPtr unmanaged);
	}
}

