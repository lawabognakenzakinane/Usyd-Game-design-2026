extends StaticBody2D

var global=preload("res://game.gd")

var position_ref=preload("res://Plantable area type 2.tscn")

@onready var emu=preload("res://emu_bush.tscn")


func _on_plantable_area_type_2_plant_is_planted():
	if global.current_seed!=null:
		match global.current_seed:
			global.Plants.EMU_BUSH:
			# Create the new plant
				var emu_new=emu.instantiate()
				emu_new.position=position_ref.plant.position
				add_child(emu_new)
				if emu_new==null:
					print("couldnt create the new plant")
				return emu_new
				
			global.Plants.CITRUS_AUSTRALASICA:
					#citru.new()
				pass
			global.Plants.EUCALYPTUS_GILLII:
				#eucalyptus.new()
				pass
