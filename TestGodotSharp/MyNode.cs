using System;
using GodotEngine;

//namespace Test
//{
public class MyNode : Node2D
{
	private int number = 10;

	public void _ready ()
	{
		Console.WriteLine ("Called: _ready");
		set_process (true);
		number = 30;
	}

	public void _process (float delta)
	{
		Console.WriteLine (delta);
		translate (new Vector2 (2, 1.2f));

		// Test calling GDScript from C#. Not working yet.
		//get_node ("Sprite").call ("print_num", 9999998);

		// Test unmanaged node to existing managed object
		MyNode node = get_node (".") as MyNode;

		if (node == null) {
			Console.WriteLine ("Failed: Returned node is not instance of MyNode");
		} else {
			// Should print 30
			Console.WriteLine (node.number);
		}
	}

	void print_hello ()
	{
		Console.WriteLine ("C# method called from GDScript: Hello");
	}
}
//}
