extends Node
export(NodePath) var pathToPlayer



var scene
func _ready():
 scene = load("res://scene/tiro.tscn")
 
	pass



func _process(delta):
	var key_shot = Input.is_action_just_pressed("ui_accept");
	var player = get_node(pathToPlayer)
	if key_shot:
		var node = scene.instance()
		node.position=(player.position)
		add_child(node) 
	pass

