extends CharacterBody2D

##PLant class

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
	var _water_min
	var _water_max
	var _water_received
	var _sunlight_received
	var _sunlight_min
	var _sunlight_max
	var _land_type_requirement
	var _day_limit =null#When the requirements are not met theres a day limit until the plant dies

	func _init(water_requirement,sunlight_requirement,land_type):
		_water_requirement=water_requirement
		_sunlight_requirement=sunlight_requirement
		_land_type_requirement=land_type
	
	#Receive water
	func receive_water(water_received):
		_water_received+=water_received
	
	#Growth function called at the end of the day
	func growth():
		if _stage==WRONG_ENVIRONMENT or stage==SEED_PRODUCTION Or _stage:
			pass
		# Check if the requirements were met
		if (_water_received>=_water_min and _water_received<=_water_max) and (_sunlight_received>=_sunlight_min and _sunlight_received<=_sunlight_max):
			
		if _day_limit and _day_limit!=0:
			pass
	
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
		
		
