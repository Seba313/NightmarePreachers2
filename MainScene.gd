extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# OS.window_size = Vector2(640, 640)
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_menu_button_on_pressed():
	$AnimationPlayer.play("MenuOnOff")
	pass # replace with function body


func _on_menu_button_off_pressed():
	$AnimationPlayer.play_backwards("MenuOnOff")
	pass # replace with function body
