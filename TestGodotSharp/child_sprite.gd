
extends Sprite

func _ready():
	# Call C# method
	get_parent().print_hello()

func print_num(num):
	prints("GDScript method called from C#:", num)
