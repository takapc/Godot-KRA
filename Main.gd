extends Node2D

func _ready():
	var horse1 = CreateHorse.new(216, 20, "芦毛")
	var horse2 = CreateHorse.new(216, 70, "白毛")
	add_child(horse1.instance)
	add_child(horse2.instance)
	pass

func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	$Goal.hide()

func _on_visible_on_screen_notifier_2d_screen_entered():
	$Goal.show()
