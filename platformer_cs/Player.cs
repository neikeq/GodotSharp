using GodotEngine;

public class Player : RigidBody2D
{
    string current_anim = "";
    bool siding_left = false;
    bool jumping = false;
    bool stopping_jump = false;
    bool shooting = false;

    float WALK_ACCEL = 800.0f;
    float WALK_DEACCEL = 800.0f;
    float WALK_MAX_VELOCITY = 200.0f;
    float AIR_ACCEL = 200.0f;
    float AIR_DEACCEL = 200.0f;
    int JUMP_VELOCITY = 460;
    float STOP_JUMP_FORCE = 900.0f;

    float MAX_FLOOR_AIRBORNE_TIME = 0.15f;

    float airborne_time = 1e20f;
    float shoot_time = 1e20f;

    float MAX_SHOOT_POSE_TIME = 0.3f;

    PackedScene bullet;// = preload("res://bullet.tscn");

    float floor_h_velocity = 0.0f;
    PackedScene enemy;

    new void _ready()
    {
        enemy = ResourceLoader.Instance.load("res://enemy.tscn") as PackedScene;
        bullet = ResourceLoader.Instance.load("res://bullet.tscn") as PackedScene;
    }

    new void _integrate_forces(Physics2DDirectBodyState s)
    {
        Vector2 lv = s.get_linear_velocity();
        float step = s.get_step();

        string new_anim = current_anim;
        bool new_siding_left = siding_left;

        // Get the controls
        bool move_left = Input.Instance.is_action_pressed("move_left");
        bool move_right = Input.Instance.is_action_pressed("move_right");
        bool jump = Input.Instance.is_action_pressed("jump");
        bool shoot = Input.Instance.is_action_pressed("shoot");
        bool spawn = Input.Instance.is_action_pressed("spawn");

        if (spawn)
        {
            Enemy e = enemy.instance() as Enemy;
            Vector2 p = get_pos();
            p.y = p.y - 100;
            e.set_pos(p);
            get_parent().add_child(e);
        }

        // Deapply prev floor velocity
        lv.x -= floor_h_velocity;
        floor_h_velocity = 0.0f;

        // Find the floor (a contact with upwards facing collision normal)
        bool found_floor = false;
        int floor_index = -1;

        for (int x = 0; x < s.get_contact_count(); x++)
        {
            Vector2 ci = s.get_contact_local_normal(x);
            if (Vector2.dot(ci, new Vector2(0, -1)) > 0.6f)
            {
                found_floor = true;
                floor_index = x;
            }
        }

        /*
		A good idea when impementing characters of all kinds,
		compensates for physics imprecission, as well as human reaction delay.
		*/
        if (shoot && !shooting)
        {
            shoot_time = 0;
            Bullet bi = bullet.instance() as Bullet;
            float ss = siding_left ? -1.0f : 1.0f;
            Position2D bullet_shoot = get_node("bullet_shoot") as Position2D;
            Vector2 pos = get_pos() + bullet_shoot.get_pos() * new Vector2(ss, 1.0f);

            bi.set_pos(pos);
            get_parent().add_child(bi);

            bi.set_linear_velocity(new Vector2(800.0f * ss, -80));

            Particles2D smoke = get_node("sprite/smoke") as Particles2D;
            smoke.set_emitting(true);

            SamplePlayer sound = get_node("sound") as SamplePlayer;
            sound.play("shoot");

            Physics2DServer.Instance.body_add_collision_exception(bi.get_rid(), get_rid()); // Make bullet and this not collide
        }
        else
        {
            shoot_time += step;
        }

        if (found_floor)
            airborne_time = 0.0f;
        else
            airborne_time += step; // Time it spent in the air

        bool on_floor = airborne_time < MAX_FLOOR_AIRBORNE_TIME;

        // Process jump
        if (jumping)
        {
            if (lv.y > 0)
                jumping = false; // Set off the jumping flag if going down
            else if (!jump)
                stopping_jump = true;

            if (stopping_jump)
                lv.y += STOP_JUMP_FORCE * step;
        }

        if (on_floor)
        {
            // Process logic when character is on floor
            if (move_left && !move_right)
            {
                if (lv.x > -WALK_MAX_VELOCITY)
                    lv.x -= WALK_ACCEL * step;
            }
            else if (move_right && !move_left)
            {
                if (lv.x < WALK_MAX_VELOCITY)
                    lv.x += WALK_ACCEL * step;
            }
            else
            {
                float xv = Mathf.abs(lv.x);
                xv -= WALK_DEACCEL * step;
                if (xv < 0)
                    xv = 0;
                lv.x = Mathf.sign(lv.x) * xv;
            }

            // Check jump
            if (!jumping && jump)
            {
                lv.y = -JUMP_VELOCITY;
                jumping = true;
                stopping_jump = false;
                SamplePlayer sound = get_node("sound") as SamplePlayer;
                sound.play("jump");
            }

            // Check siding
            if (lv.x < 0 && move_left)
                new_siding_left = true;
            else if (lv.x > 0 && move_right)
                new_siding_left = false;

            if (jumping)
            {
                new_anim = "jumping";
            }
            else if (Mathf.abs(lv.x) < 0.1f)
            {
                if (shoot_time < MAX_SHOOT_POSE_TIME)
                    new_anim = "idle_weapon";
                else
                    new_anim = "idle";
            }
            else
            {
                if (shoot_time < MAX_SHOOT_POSE_TIME)
                    new_anim = "run_weapon";
                else
                    new_anim = "run";
            }
        }
        else
        {
            // Process logic when the character is in the air
            if (move_left && !move_right)
            {
                if (lv.x > -WALK_MAX_VELOCITY)
                    lv.x -= AIR_ACCEL * step;
            }
            else if (move_right && !move_left)
            {
                if (lv.x < WALK_MAX_VELOCITY)
                    lv.x += AIR_ACCEL * step;
            }
            else
            {
                float xv = Mathf.abs(lv.x);
                xv -= AIR_DEACCEL * step;
                if (xv < 0)
                    xv = 0;
                lv.x = Mathf.sign(lv.x) * xv;
            }

            if (lv.y < 0)
            {
                if (shoot_time < MAX_SHOOT_POSE_TIME)
                    new_anim = "jumping_weapon";
                else
                    new_anim = "jumping";
            }
            else
            {
                if (shoot_time < MAX_SHOOT_POSE_TIME)
                    new_anim = "falling_weapon";
                else
                    new_anim = "falling";
            }
        }

        // Update siding
        if (new_siding_left != siding_left)
        {
            Sprite sprite = get_node("sprite") as Sprite;

            if (new_siding_left)
                sprite.set_scale(new Vector2(-1, 1));
            else
                sprite.set_scale(new Vector2(1, 1));

            siding_left = new_siding_left;
        }

        // Change animation
        if (new_anim != current_anim)
        {
            current_anim = new_anim;
            AnimationPlayer anim = get_node("anim") as AnimationPlayer;
            anim.play(current_anim);
        }

        shooting = shoot;

        // Apply floor velocity
        if (found_floor)
        {
            floor_h_velocity = s.get_contact_collider_velocity_at_pos(floor_index).x;
            lv.x += floor_h_velocity;
        }

        // Finally, apply gravity and set back the linear velocity
        lv += s.get_total_gravity() * step;
        s.set_linear_velocity(lv);
    }
}
