extends Node
export(NodePath) var pathAudioNode
# class member variables go here, for example:
# var a = 2

func _ready():
	
	
	pass




func _on_AudioStreamPlayer_finished():
	var ASP = get_node(pathAudioNode)
	ASP.play(0)
	
	pass # replace with function body
