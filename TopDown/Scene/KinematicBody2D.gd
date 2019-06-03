extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 1.0;


func _ready():


	pass



func _process(delta):

	 
	pass

func _physics_process(delta):
	var moveDirection = Vector2(0,0);
	var key_up = Input.is_action_pressed("ui_up");
	var key_down = Input.is_action_pressed("ui_down");
	var key_left = Input.is_action_pressed("ui_left");
	var key_right = Input.is_action_pressed("ui_right");
	var key_shot = Input.is_action_pressed("ui_accept");
	
	if key_up:
		moveDirection.y=-speed;
		$AnimatedSprite.play("andando");
	elif key_down:
		moveDirection.y=speed;
		$AnimatedSprite.play("andando");
	elif key_left:
		moveDirection.x=-speed;
		$AnimatedSprite.flip_h=true;
		$AnimatedSprite.play("andando");
		
	elif key_right:
		moveDirection.x=speed;
		$AnimatedSprite.flip_h=false;
		$AnimatedSprite.play("andando");
	else:
		$AnimatedSprite.play("parado");
	
	
	move_and_collide(moveDirection);
	
	
	
	pass