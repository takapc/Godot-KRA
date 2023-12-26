extends Area2D
var horse_speed = 0

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _ready():
	show()
	$AnimatedSprite2D.animation = ""
	position.y = 0
	position.x = 216


func _on_timer_timeout():
	position.x += horse_speed
