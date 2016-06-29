using System;
using GodotEngine;

public class MovingPlatform : Node2D
{
	private Vector2 motion = new Vector2();
	private float cycle = 1.0f;

	private float accum = 0.0f;

	new void _fixed_process(float delta)
	{
		accum += delta * (1.0f / cycle) * Mathf.PI * 2.0f;
		accum = accum % (Mathf.PI * 2.0f);
		float d = Mathf.sin(accum);
		Matrix32 xf = new Matrix32();
		xf[2] = motion * d;
		RigidBody2D platform = get_node("platform") as RigidBody2D;
		platform.set_transform(xf);
	}

	new void _ready()
	{
		set_fixed_process (true);

		// Workaround. Exported variables are not working yet

		int index = get_index ();

		if (index == 0) {
			//motion = new Vector2 (0, 140);
			//cycle = 5f;
			set ("motion", new Vector2 (0, 140));
			set ("cycle", 5f);
		} else if (index == 1) {
			motion = new Vector2 (300, 0);
			cycle = 10f;
		} else if (index == 2) {
			motion = new Vector2 (450, 0);
			cycle = 10f;
		}
    }
}
