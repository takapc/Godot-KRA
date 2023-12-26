extends Node2D

@export var RunningHorse: Array[PackedScene]

func _ready():
	pass


func _process(delta):
	pass


func _on_visible_on_screen_notifier_2d_screen_exited():
	$Goal.hide()

func _on_visible_on_screen_notifier_2d_screen_entered():
	$Goal.show()
