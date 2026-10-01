extends StaticBody2D

var global=preload("res://game.gd")


func _input(event):
	#if event.is_action_pressed("pressed") and event.pressed:
		#Switch to Watering mode
	#	global.current_state=main.State.WATERING_MODE
	#	print("Watering mode")
		pass
		
		





func _on_watering_can_mouse_entered() -> void:
	if Input.is_action_pressed("pressed")==true:
		global.current_state=main.State.WATERING_MODE
		print("Watering mode")
		





func _on_watering_can_focus_entered() -> void:
	global.current_state=main.State.WATERING_MODE
	print("Watering mode")


func _on_watering_can_gui_input(event: InputEvent) -> void:
	if Input.is_action_pressed("pressed")==true:
		global.current_state=main.State.WATERING_MODE
		print("Watering mode")
