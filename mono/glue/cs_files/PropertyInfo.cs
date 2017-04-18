using System;

namespace GodotEngine
{
	[AttributeUsage(AttributeTargets.Field | AttributeTargets.Property)]
	public class PropertyInfo : Attribute
	{
		public int type;
		public int hint;
		public string hint_string;
		public int usage;

		public PropertyInfo()
		{
			this.type = Godot.TYPE_NIL;
			this.hint = Godot.PROPERTY_HINT_NONE;
			this.usage = Godot.PROPERTY_USAGE_DEFAULT;
		}

		public PropertyInfo(int type, int hint = Godot.PROPERTY_HINT_NONE, string hint_string = "", int  usage = Godot.PROPERTY_USAGE_DEFAULT)
		{
			this.type = type;
			this.hint = hint;
			this.hint_string = hint_string;
			this.usage = usage;
		}
	}
}
