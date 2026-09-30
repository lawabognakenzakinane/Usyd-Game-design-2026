class_name Plant
extends CharacterBody2D

enum Land_type{
		DESERT,
		SOIL,
		CLAY,
		SAND
	}
enum Water_requirement{
	LOW,
	MINIMAL,
	MODERATE,
	HIGH
}
enum Sun_requirement{
	PARTIAL,
	FULL
}
enum Plant_state{
	SEED,
	SPROUT,
	SEEDLING_STAGE,
	VEGETEATIVE_GROWTH,
	SEED_PRODUCTION,
	WRONG_ENVIRONMENT,
	DEAD
}



	
var _stage
var _name
var _water_min
var _water_max
var _water_received
var _sunlight_received
var _sunlight_min
var _sunlight_max
var _land_type_requirement
var _health
var _day_limit =null#When the requirements are not met theres a day limit until the plant dies

func _init(name,water_requirement,sunlight_requirement,land_type):
	_name=name
	_water_min=water_requirement
	_sunlight_min=sunlight_requirement
	_land_type_requirement=land_type
	
func _process(_delta):
		#Plant animation
	pass
	
	#Receive water
func receive_water(water_received):
	_water_received+=water_received
	
#Growth function called at the end of the day
func growth():
	if _stage==Plant_state.WRONG_ENVIRONMENT or _stage==Plant_state.SEED_PRODUCTION or _stage==Plant_state.DEAD:
		return
		# Check if the requirements were met
	if (_water_received>=_water_min and _water_received<=_water_max) and (_sunlight_received>=_sunlight_min and _sunlight_received<=_sunlight_max):
		_stage=get_next_stage(_stage)
		reset_requirements()
		return _stage
		##If the requirement were not met and theres already a day limit	
	if _day_limit and _day_limit!=0:
		_day_limit=_day_limit-1
		reset_requirements()
		return
		#If the plant limit has passed then the plant is dead
	if _day_limit==0:
		_stage=Plant_state.DEAD
		return
		#Create a new day limit
	_day_limit=3
	reset_requirements()
	return
		
		
func get_next_stage(_stage):
	match _stage:
		Plant_state.SEED:
			return Plant_state.SPROUT
		Plant_state.SPROUT:
			return Plant_state.SEEDLING_STAGE
		Plant_state.SEEDLING_STAGE:
			return Plant_state.VEGETEATIVE_GROWTH
		Plant_state.VEGETEATIVE_GROWTH:	
			return Plant_state.SEED_PRODUCTION
			
	
func plant(land_type):
	_stage=Plant_state.SEED
	#Check if the land_type is appropriate
	if land_type!=_land_type_requirement:
		_stage=Plant_state.WRONG_ENVIRONMENT
			
func reset_requirements():
	_water_received=0
	_sunlight_received=0

#Taking damage from enemies	
func take_damage(damage):
	_health-=damage
	




		
		
