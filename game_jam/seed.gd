class_name seed
extends Panel

var global=preload("res://game.gd")


enum Plant_type{
	EMU_BUSH,
	PLACEHOLDER
}
@export var plant_type=Plant_type.EMU_BUSH

func _input(event):
	if event.is_action_pressed("pressed"):
		#Switch to plant mode
		global.current_state=global.State.PLANT_MODE
