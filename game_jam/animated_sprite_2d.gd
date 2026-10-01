class_name Sprite
extends AnimatedSprite2D

var plant=load("res://emu_bush.gd")
var count=0
	
func _process(delta):
	match plant.new_plant._stage:
		plant.new_plant._stage.Plant_state.SEED:
			frame=0
		plant.new_plant._stage.Plant_state.SPROUT:
			frame=1
		plant.new_plant._stage.Plant_state.SEEDLING_STAGE:
			frame=2
		plant.new_plant._stage.Plant_state.VEGETEATIVE_GROWTH:
			frame=3
		plant.new_plant._stage.Plant_state.SEED_PRODUCTION:
			frame=4
		
