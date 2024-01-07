extends Node

var horse1: Horse
var horse2: Horse
var horse3: Horse
var horse4: Horse
var horse5: Horse
var horse6: Horse
var horse7: Horse
var horse8: Horse
var horse9: Horse
var horse10: Horse
var horse11: Horse
var horse12: Horse

func _on_main_start_game():
	var n = 130
	#(x,y,color,number)
	horse1 = CreateHorse.new(216, 100, "芦毛", 1).get_horse()
	horse1.speed = n
	horse1.run_type = 1
	add_child(horse1)
	horse2 = CreateHorse.new(216, 140, "栗毛", 2).get_horse()
	horse2.speed = n
	horse2.run_type = 1
	add_child(horse2)
	horse3 = CreateHorse.new(216, 180, "芦毛", 3).get_horse()
	horse3.speed = n
	horse3.run_type = 2
	add_child(horse3)
	horse4 = CreateHorse.new(216, 220, "栗毛", 4).get_horse()
	horse4.speed = n
	horse4.run_type = 2
	add_child(horse4)
	horse5 = CreateHorse.new(216, 260, "栗毛", 5).get_horse()
	horse5.speed = n
	horse5.run_type = 3
	add_child(horse5)
	horse6 = CreateHorse.new(216, 300, "栗毛", 6).get_horse()
	horse6.speed = n
	horse6.run_type = 3
	add_child(horse6)
	horse7 = CreateHorse.new(216, 340, "栗毛", 7).get_horse()
	horse7.speed = n
	horse7.run_type = 4
	add_child(horse7)
	horse8 = CreateHorse.new(216, 380, "芦毛", 8).get_horse()
	horse8.speed = n
	horse8.run_type = 4
	add_child(horse8)
	horse9 = CreateHorse.new(216, 420, "栗毛", 9).get_horse()
	horse9.speed = n
	horse9.run_type = 4
	add_child(horse9)
	horse10 = CreateHorse.new(216, 460, "芦毛", 10).get_horse()
	horse10.speed = n
	horse10.run_type = 5
	add_child(horse10)
	horse11 = CreateHorse.new(216, 500, "栗毛", 11).get_horse()
	horse11.speed = n
	horse11.run_type = 5
	add_child(horse11)
	horse12 = CreateHorse.new(216, 540, "栗毛", 12).get_horse()
	horse12.speed = n
	horse12.run_type = 5
	add_child(horse12)
	$ExhaustedTimer.wait_time = randf_range(10.0,11.0)
	$ExhaustedTimer.start()
	$DriveTimer.wait_time = randf_range(43.0,44.0)
	$DriveTimer.start()
	horse1.initHorseReady()
	horse2.initHorseReady()
	horse3.initHorseReady()
	horse4.initHorseReady()
	horse5.initHorseReady()
	horse6.initHorseReady()
	horse7.initHorseReady()
	horse8.initHorseReady()
	horse9.initHorseReady()
	horse10.initHorseReady()
	horse11.initHorseReady()
	horse12.initHorseReady()


func _on_exhausted_timer_timeout():
	horse1.exhaust()
	horse2.exhaust()
	horse3.exhaust()
	horse4.exhaust()
	horse5.exhaust()
	horse6.exhaust()
	horse7.exhaust()
	horse8.exhaust()
	horse9.exhaust()
	horse10.exhaust()
	horse11.exhaust()
	horse12.exhaust()

func _on_drive_timer_timeout():
	horse1.drive()
	horse2.drive()
	horse3.drive()
	horse4.drive()
	horse5.drive()
	horse6.drive()
	horse7.drive()
	horse8.drive()
	horse9.drive()
	horse10.drive()
	horse11.drive()
	horse12.drive()
