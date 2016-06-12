
extends Node2D

var bullet = preload("res://bullet.tscn")
var enemy

func _ready():
	enemy = load("res://enemy.tscn");

func instance_bullet_plz(var ss):
	var bi = bullet.instance()
	var pos = get_parent().get_pos() + get_node("../bullet_shoot").get_pos()*Vector2(ss, 1.0)

	bi.set_pos(pos)
	get_parent().get_parent().add_child(bi)

	bi.set_linear_velocity(Vector2(800.0*ss, -80))
	get_node("../sprite/smoke").set_emitting(true)
	get_node("../sound").play("shoot")
	PS2D.body_add_collision_exception(bi.get_rid(), get_parent().get_rid()) # Make bullet and this not collide

func instance_enemy_plz(var pos, var parent):
	var e = enemy.instance()
	e.set_pos(pos)
	parent.add_child(e)
