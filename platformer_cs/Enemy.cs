using System;
using GodotEngine;

public class Enemy : RigidBody2D
{
    private const int STATE_WALKING = 0;
    private const int STATE_DYING = 1;

    private const int WALK_SPEED = 50;

    private int state = STATE_WALKING;
    private int direction = -1;

    private string current_anim = String.Empty;

    private RayCast2D rc_left;
    private RayCast2D rc_right;

    new void _ready()
    {
        rc_left = get_node("raycast_left") as RayCast2D;
        rc_right = get_node("raycast_right") as RayCast2D;
    }

    new void _integrate_forces(Physics2DDirectBodyState s)
    {
        Vector2 lv = s.get_linear_velocity();
        string new_anim = current_anim;

        if (state == STATE_DYING)
        {
            new_anim = "explode";
        }
        else if (state == STATE_WALKING)
        {
            new_anim = "walk";

            float wall_side = 0.0f;

            for (int i = 0; i < s.get_contact_count(); i++)
            {
                Bullet bullet = s.get_contact_collider_object(i) as Bullet;
                Vector2 dp = s.get_contact_local_normal(i);

                if (bullet != null && !bullet.Disabled)
                {
                    set_mode(MODE_RIGID);
                    state = STATE_DYING;
                    lv = s.get_contact_local_normal(i) * 400;
                    s.set_angular_velocity(Mathf.sign(dp.x) * 33.0f);
                    set_friction(1);
                    bullet.disable();
                    SamplePlayer2D sound = get_node("sound") as SamplePlayer2D;
                    sound.play("hit");
                    break;
                }

                if (dp.x > 0.9f)
                    wall_side = 1.0f;
                else if (dp.x < -0.9f)
                    wall_side = -1.0f;
            }

            if (wall_side != 0 && wall_side != direction)
            {
                direction = -direction;
                Sprite sprite = get_node("sprite") as Sprite;
                sprite.set_scale(new Vector2(-direction, 1));
            }

            if (direction < 0 && !rc_left.is_colliding() && rc_right.is_colliding())
            {
                direction = -direction;
                Sprite sprite = get_node("sprite") as Sprite;
                sprite.set_scale(new Vector2(-direction, 1));
            }
            else if (direction > 0 && !rc_right.is_colliding() && rc_left.is_colliding())
            {
                direction = -direction;
                Sprite sprite = get_node("sprite") as Sprite;
                sprite.set_scale(new Vector2(-direction, 1));
            }

            lv.x = direction * WALK_SPEED;
        }

        if (current_anim != new_anim)
        {
            current_anim = new_anim;
            AnimationPlayer anim = get_node("anim") as AnimationPlayer;
            anim.play(current_anim);
        }

        s.set_linear_velocity(lv);
    }

    void _die()
    {
        queue_free();
    }

    void _pre_explode()
    {
        clear_shapes();
        set_mode(MODE_STATIC);
        SamplePlayer2D sound = get_node("sound") as SamplePlayer2D;
        sound.play("explode");
    }
}
