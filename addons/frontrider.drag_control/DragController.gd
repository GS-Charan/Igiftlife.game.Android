extends Node
class_name DragController

var target:Control

func _ready():
	target = get_parent()
	target.connect("gui_input",self,"_on_input")
	pass

var clicked = false
func _on_input(event):
	clicked = Input.is_action_pressed("left_click")
	
	if event is InputEventMouseMotion and clicked:
		target.rect_position +=event.relative
		pass
	pass 
