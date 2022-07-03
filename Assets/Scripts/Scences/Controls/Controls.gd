extends Control

onready var extimer = get_node("ExiTimer")

func _ready():
	pass

func _input(event):
	if event.is_action_pressed("ui_end"):
		get_node("ExitLabel").text = "Exit..."
		extimer.start()
	elif event.is_action_released("ui_end"):
		get_node("ExitLabel").text = " "
		extimer.stop()
	
	if event.is_action_pressed("ui_fullscreen"):
		OS.window_fullscreen = !OS.window_fullscreen

func _on_ExiTimer_timeout():
	get_tree().quit()
