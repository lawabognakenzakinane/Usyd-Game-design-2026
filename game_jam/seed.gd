class_name seed
extends Panel

@export var plant_selection=false


enum Plant_type{
	EMU_BUSH,
	PLACEHOLDER
}
@export var plant_type=Plant_type.EMU_BUSH

func _input(event):
	if event.is_action_pressed("pressed"):
		#Switch to plant mode
		plant_selection=true
