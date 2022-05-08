extends Control

func _ready():
	print('Hello World')

func _on_Button_pressed():
	print('Start')

func _on_Button2_pressed():
	print('Config')

func _on_Button3_pressed():
	print('Exit')
	get_tree().quit()
