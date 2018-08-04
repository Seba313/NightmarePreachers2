extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)


func _ready():
	
	pass

func _physics_process(delta):
	
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
		motion.x = 0
	
	if is_on_floor():
		#motion.y = 0
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -200
	
	motion = move_and_slide(motion, UP)
	
	print(str(motion.y))
	
	
	pass
