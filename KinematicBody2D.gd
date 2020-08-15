extends KinematicBody2D

# This script controlls movement
var motion = Vector2()

func _physics_process(delta):
	motion.y += 20
	motion.x += 20
	motion.x = 225
		
	if Input.is_action_pressed("jump"):
		motion.y = -300
	move_and_slide(motion)
