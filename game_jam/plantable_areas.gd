extends StaticBody2D

var global=preload("res://game.gd")
var emu=preload("res://emu_bush.gd")
var citru=preload("res://citrus_australasica_x.gd")
var eucalyptus=preload("res://eucalyptus_gillii.gd")

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
					if global.current_seed!=null:
						match global.current_seed:
							global.Plants.EMU_BUSH:
								emu.new()
							global.Plants.CITRUS_AUSTRALASICA:
								#citru.new()
								pass
							global.Plants.EUCALYPTUS_GILLII:
								#eucalyptus.new()
								pass
					else:
						#set can plant value as false
						pass
