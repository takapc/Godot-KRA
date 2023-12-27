extends Node
class_name CreateHorse
const horse = preload("res://horses.tscn")
var instance: Horse

func _init(x: float,y: float, tex: String, num: int):
	instance = horse.instantiate()
	instance.set_texture(tex)
	instance.position.x = x
	instance.position.y	= y
	instance.scale = Vector2(0.2, 0.2)
	instance.set_horse_number(num)
	instance.show()
	
func get_horse():
	return instance
