extends StaticBody2D

var global=preload("res://game.gd")

var is_digged=false
@onready var plant = $plant

func _on_control_gui_input(event: InputEvent) -> void:
	if Input.is_action_pressed("pressed")==true:
		match global.current_state:
			global.State.DIGGING_MODE:
				plant.play("dig")
				is_digged=true
			global.State.PLANT_MODE:
				if is_digged==true:
					#get plant info and create new node at the same position
					pass
				else:
					#set can plant value as false
					pass
