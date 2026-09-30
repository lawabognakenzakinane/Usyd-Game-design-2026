extends CharacterBody2D

enum {
		DESERT,
		SOIL,
		CLAY,
		SAND
	}
##Plant class

class Plant:
	enum {
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

	func _init(name,water_requirement,sunlight_requirement,land_type,sprite):
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
		if _stage==WRONG_ENVIRONMENT or _stage==SEED_PRODUCTION or _stage==DEAD:
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
			_stage=DEAD
			return
		#Create a new day limit
		_day_limit=3
		reset_requirements()
		return
		
		
	func get_next_stage(_stage):
		match _stage:
			SEED:
				return SPROUT
			SPROUT:
				return SEEDLING_STAGE
			SEEDLING_STAGE:
				return 	VEGETEATIVE_GROWTH
			VEGETEATIVE_GROWTH:	
				return SEED_PRODUCTION
			
	
	func plant(land_type):
		_stage=SEED
		#Check if the land_type is appropriate
		if land_type!=_land_type_requirement:
			_stage=WRONG_ENVIRONMENT
			
	func reset_requirements():
		_water_received=0
		_sunlight_received=0

#TO DO:Taking damage from enemies	
	func take_damage(damage):
		pass
	
	#TO DO: 
	func produce_seeds():
		pass

#Maybe better to use a function that initialise the plants
var emu_bush=Plant.new("Emu bush",1,3,DESERT,placeholder)

		
		
