extends Control

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().paused = !get_tree().paused
		get_node(".").visible = !get_node(".").visible
