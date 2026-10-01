extends Panel

var global=preload("res://game.gd")


func _on_gui_input(event: InputEvent) -> void:
	if Input.is_action_pressed("pressed")==true:
		global.current_state=main.State.DIGGING_MODE
		print("Digging mode")
