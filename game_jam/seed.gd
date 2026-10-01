class_name seed
extends Panel

var global=preload("res://game.gd")

func _on_gui_input(event: InputEvent) -> void:
	if Input.is_action_pressed("pressed")==true:
		global.current_state=global.State.PLANT_MODE
		global.current_seed=global.Plants.EMU_BUSH
		print("Plant mode")
