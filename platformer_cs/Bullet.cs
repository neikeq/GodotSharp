using GodotEngine;

public class Bullet : RigidBody2D
{
    private bool disabled = false;

    public bool Disabled
    {
        get { return disabled; }
    }

    new void _ready()
    {
        Timer timer = get_node("Timer") as Timer;
        timer.start();
    }

    public void disable()
    {
        if (disabled)
            return;

        AnimationPlayer anim = get_node("anim") as AnimationPlayer;
        anim.play("shutdown");
        disabled = true;
    }
}
