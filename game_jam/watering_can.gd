extends StaticBody2D

var global=preload("res://game.gd")


func _on_watering_can_gui_input(event: InputEvent) -> void:
	if Input.is_action_pressed("pressed")==true:
		global.current_state=main.State.WATERING_MODE
		print("Watering mode")
