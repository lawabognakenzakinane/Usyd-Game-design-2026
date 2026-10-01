class_name main
extends Node2D

##@export var position_plant=Vector2(0,0)

enum State{
	VISUAL_MODE,
	DIGGING_MODE,
	WATERING_MODE,
	PLANT_MODE
}

enum Plants{
	EMU_BUSH,
	CITRUS_AUSTRALASICA,
	EUCALYPTUS_GILLII
	}

static var current_state=State.VISUAL_MODE
static var current_seed=null
static var cant_plant=true
