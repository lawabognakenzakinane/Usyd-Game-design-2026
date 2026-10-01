class_name Sprite
extends AnimatedSprite2D

var count=0
func originale_frame():
	frame=0
func change_frame():
	count+=1	
	frame=count
