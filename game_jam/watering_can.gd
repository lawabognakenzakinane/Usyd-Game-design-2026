extends StaticBody2D

var global=preload("res://game.gd")


func _input(event):
	if event.is_action_pressed("pressed") and get_global_mouse_position()==position:
		#Switch to Watering mode
		global.current_state=main.State.WATERING_MODE
		print("Watering mode")
		
		
