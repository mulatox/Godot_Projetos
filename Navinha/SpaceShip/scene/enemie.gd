extends KinematicBody2D

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here

	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	var positionPlayer = Player.get_node("Player").position
	
	var rotation = positionPlayer.angle_to_point(position)
	look_at(positionPlayer)

	move_and_collide(  Vector2(1.2, 0).rotated(rotation))

	pass
