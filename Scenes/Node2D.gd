extends Node2D


func _ready():
	pass # Replace with function body.

var dialogue_box
func play_dialogue(data):
	dialogue_box.start(data)
	yield(dialogue_box, "dialogue_ended")
