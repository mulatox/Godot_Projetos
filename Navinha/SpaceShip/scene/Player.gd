extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var speed = 3.5;
var mpos

func _ready():


	pass



func _process(delta):
	mpos = get_global_mouse_position();
	look_at(mpos);
	 
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
	if key_down:
		moveDirection.y=speed;
	if key_left:
		moveDirection.x=-speed;	
	if key_right:
		moveDirection.x=speed;
	
	
	move_and_collide(moveDirection);
	
	
	
	pass