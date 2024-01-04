extends Area2D
class_name Horse

var speed: int
var run_type: int

func _ready():
	rotation = -PI / 40
	$AnimatedSprite2D.play()

func _on_animated_sprite_2d_frame_changed():
	if rotation > 0 :
		rotation -= PI / 20
	else:
		rotation += PI / 20

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()

func set_texture(v: String):
	$AnimatedSprite2D.animation = v
	
func set_horse_number(n: int):
	$Number.text = str(n)

func _on_move_timer_timeout():
	position.x += randf_range(speed*9,speed*9+40)*3/5000
	
func initHorseReady():
	show()
	#脚質"大逃げ"処理_加速
	if run_type == 1:
		speed *= 3
	#脚質"逃げ"処理_加速
	if run_type == 2:
		speed *= 2
	#脚質"差し"処理_減速
	if run_type == 4:
		speed *= 0.8
	#脚質"追い込み"処理_減速
	if run_type == 5:
		speed *= 0.5

func exhaust():
	#脚質"大逃げ"処理_減速
	if run_type == 1:
		speed /= 6
	#脚質"逃げ"処理_減速
	if run_type == 2:
		speed *= 0.375

func drive():
	#脚質"差し"処理_加速
	if run_type == 4:
		speed *= 2.25
	#脚質"追い込み"処理_加速
	if run_type == 5:
		speed *= 6.0
