extends StaticBody2D

##Essentially when clicked it shows the different option (so it calls the ui)
@onready var button="res://control.tscn"
func _input(event):
	if event is InputEventMouseButton:
		#Calls the relevant ui
		pass
		
