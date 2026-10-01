class_name Emu_Bush
extends Plant

var new_plant
@onready var Emu_sprite=$Emu_sprite
func _init():
	new_plant=Plant.new("Emu Bush",Water_requirement.LOW,Sun_requirement.FULL,Land_type.DESERT)
	new_plant._stage=Plant_state.SEED
			

func _process(delta):
	match new_plant._stage:
		new_plant._stage.Plant_state.SEED:
			Emu_sprite.animation="base"
			Emu_sprite.play("base")
		new_plant._stage.Plant_state.SPROUT:
			Emu_sprite.animation="default"
			Emu_sprite.frame=1
		new_plant._stage.Plant_state.SEEDLING_STAGE:
			Emu_sprite.animation="default"
			Emu_sprite.frame=2
		new_plant._stage.Plant_state.VEGETEATIVE_GROWTH:
			Emu_sprite.animation="default"
			Emu_sprite.frame=3
		new_plant._stage.Plant_state.SEED_PRODUCTION:
			Emu_sprite.animation="default"
			Emu_sprite.frame=4
		new_plant._stage.Plant_state.DEAD:
			Emu_sprite.animation="dead"
			Emu_sprite.frame=4
	
func _ready():
	show()
	


	
	
