extends Node

var horse1: Horse
var horse2: Horse
var horse3: Horse
var horse4: Horse
var horse5: Horse

func _on_main_start_game():
	#(x,y,color,number)
	horse1 = CreateHorse.new(216, 20, "芦毛", 1).get_horse()
	horse1.speed = 110
	horse1.run_type = 1
	add_child(horse1)
	horse2 = CreateHorse.new(216, 60, "栗毛", 2).get_horse()
	horse2.speed = 110
	horse2.run_type = 2
	add_child(horse2)
	horse3 = CreateHorse.new(216, 100, "芦毛", 3).get_horse()
	horse3.speed = 110
	horse3.run_type = 3
	add_child(horse3)
	horse4 = CreateHorse.new(216, 140, "栗毛", 4).get_horse()
	horse4.speed = 110
	horse4.run_type = 4
	add_child(horse4)
	horse5 = CreateHorse.new(216, 180, "栗毛", 5).get_horse()
	horse5.speed = 110
	horse5.run_type = 5
	add_child(horse5)
	$ExhaustedTimer.wait_time = randf_range(10.0,11.0)
	$ExhaustedTimer.start()
	$DriveTimer.wait_time = randf_range(43.0,44.0)
	$DriveTimer.start()
	horse1.initHorseReady()
	horse2.initHorseReady()
	horse3.initHorseReady()
	horse4.initHorseReady()
	horse5.initHorseReady()


func _on_exhausted_timer_timeout():
	horse1.exhaust()
	horse2.exhaust()
	horse3.exhaust()
	horse4.exhaust()
	horse5.exhaust()

func _on_drive_timer_timeout():
	horse1.drive()
	horse2.drive()
	horse3.drive()
	horse4.drive()
	horse5.drive()
