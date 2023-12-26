class_name CreateHorse
const horse = preload("res://horses.tscn")
var instance: Node2D

func _init(x: float,y: float, tex: String):
	instance = horse.instantiate()
	instance.set_texture(tex)
	instance.position.x = x
	instance.position.y	= y
	instance.scale = Vector2(0.2, 0.2)
	instance.show()
