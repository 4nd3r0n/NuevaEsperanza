extends Control

func _ready():
	pass

func _on_Button_pressed():
	get_tree().change_scene("res://Assets/Scenes/Nevels/NevelTest.tscn")

func _on_Button2_pressed():
	get_node("Config").visible = !get_node("Config").visible
	get_node("MainMenuContainer/VBoxContainer/VBoxContainer").visible = !get_node("MainMenuContainer/VBoxContainer/VBoxContainer").visible

func _on_Button3_pressed():
	get_tree().quit()
