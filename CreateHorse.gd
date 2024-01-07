extends Node
class_name CreateHorse
const horse = preload("res://horses.tscn")
var instance: Horse

func _init(code: String, tex: String, num: int):
	instance = horse.instantiate()
	instance.set_texture(tex)
	instance.run_type = 1
	instance.position.x = 216
	instance.position.y	= 100 + 40 * (num - 1)
	instance.scale = Vector2(0.2, 0.2)
	instance.speed = get_speed(code)
	instance.set_horse_number(num)
	instance.show()
	
func get_horse():
	return instance

func get_speed(code: String):
	return code.substr(22, 3).to_int()
