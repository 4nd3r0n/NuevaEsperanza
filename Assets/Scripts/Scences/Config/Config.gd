extends Control

func _ready():
	pass

func _on_FullSceenButton_pressed():
	OS.window_fullscreen = !OS.window_fullscreen

func _on_ApplyButton_pressed():
	get_tree().change_scene("res://Assets/Scenes/MainMenu.tscn")

func _on_BackButton_pressed():
	get_tree().change_scene("res://Assets/Scenes/MainMenu.tscn")
