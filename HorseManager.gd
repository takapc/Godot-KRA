extends Node

var horses: Array[Horse]

func _on_main_start_game():
	var n = 130
	#(code, tex, number)
	horses.append(CreateHorse.new("4230000004909634323351160", "白毛", 1).get_horse())
	horses.append(CreateHorse.new("1210023214605466315352102", "芦毛", 2).get_horse())
	for horse in horses:
		add_child(horse)
	HorsesInit()

func HorsesInit():
	for horse in horses:
		horse.initHorseReady()
