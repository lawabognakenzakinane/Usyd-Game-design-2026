extends Camera2D

var og_x_position=0
var og_y_position=-1
func _input(event):
	if event.is_action_pressed("ui_right")==true:
		og_x_position+=320
		if og_x_position>635:
			og_x_position=635
		self.position=Vector2(og_x_position,og_y_position)
		
	if event.is_action_pressed("ui_left")==true:
		og_x_position-=320
		if og_x_position<0:
			og_x_position=0
		position=Vector2(og_x_position,og_y_position)
		
func _ready():
	self.position=Vector2(og_x_position,og_y_position)
