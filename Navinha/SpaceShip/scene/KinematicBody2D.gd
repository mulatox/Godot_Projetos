extends KinematicBody2D
export(NodePath) var pathAudioNode
# class member variables go here, for example:
# var a = 2
var mpos
var speed = 300
var inicio = true
func _ready():
	mpos = get_global_mouse_position();	
	var ASP = get_node(pathAudioNode)
	ASP.play(0)
	
	pass

func _process(delta):
	if inicio:
		mpos = get_global_mouse_position();
		inicio=false
		var rotation = mpos.angle_to_point(position)
		look_at(mpos)
		
	move_and_collide(  Vector2(5, 0).rotated(rotation))
	
	
	
	
	pass
	
