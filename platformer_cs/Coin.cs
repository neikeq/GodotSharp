using GodotEngine;

public class Coin : Area2D
{
    private bool taken = false;

    void _on_body_enter(GodotEngine.Object body)
    {
        if (!taken && (body as Player) != null)
        {
            AnimationPlayer anim = get_node("anim") as AnimationPlayer;
            anim.play("taken");
            taken = true;
        }
    }
}
