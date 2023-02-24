extends Node2D

var Displayvalue =0
onready var timer = get_node("Timer")


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.set_wait_time(2)
	timer.start()

func TimerTimeout():
   
   Displayvalue += 1
   if Displayvalue >= 8:
	   SceneManager.change_scene('SH2.tscn')


func _on_Timer_timeout():
	pass # Replace with function body.
