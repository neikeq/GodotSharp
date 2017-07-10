using System;

namespace GodotEngine
{
	[AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
	public class Export : Attribute
	{
		private int hint;
		private string hint_string;
		private int usage;

		public Export(int hint = Godot.PROPERTY_HINT_NONE, string hint_string = "", int usage = Godot.PROPERTY_USAGE_DEFAULT)
		{
			this.hint = hint;
			this.hint_string = hint_string;
			this.usage = usage;
		}
	}
}
