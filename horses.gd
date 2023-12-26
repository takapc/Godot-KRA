extends Area2D
var horse_speed = 0

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func _on_timer_timeout():
	position.x += horse_speed

func set_texture(v: String):
	$AnimatedSprite2D.animation = v
