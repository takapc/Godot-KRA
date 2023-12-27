extends Node2D
signal start_game
signal horse_ready

func _ready():
	start_game.emit()

func _on_visible_on_screen_notifier_2d_screen_exited():
	$Goal.hide()

func _on_visible_on_screen_notifier_2d_screen_entered():
	$Goal.show()

func _on_start_game():
	horse_ready.emit()
