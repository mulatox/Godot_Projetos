extends KinematicBody2D
export(NodePath) var pathPlayerNode
var playerNode

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	playerNode = get_node(pathPlayerNode).get_node("Player")
	pass

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	
	
	var rotation = playerNode.position.angle_to_point(position)
	look_at(playerNode.position)

	move_and_collide(  Vector2(1.2, 0).rotated(rotation))

	pass
