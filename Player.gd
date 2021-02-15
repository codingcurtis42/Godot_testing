extends KinematicBody2D

# Games Variables
const ACCELERATION = 500
const MAX_SPEED = 80
const FRICTION = 500
var screen_size 
var velocity = Vector2.ZERO
var simultaneous_scene = preload("res://Battle.tscn").instance()

func _ready():
	screen_size = get_viewport_rect().size

func _physics_process(delta):
	
	var input_vector = Vector2.ZERO
	
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	
	if input_vector != Vector2.ZERO:
		velocity = velocity.move_toward(input_vector * MAX_SPEED, ACCELERATION * delta)
		if input_vector < Vector2.ZERO:
			$AnimatedSprite.play('Walk')
			$AnimatedSprite.flip_h = false
		elif input_vector > Vector2.ZERO:
			$AnimatedSprite.play('Walk')
			$AnimatedSprite.flip_h = true
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)
		$AnimatedSprite.play('Stand')
		
	velocity = move_and_slide(velocity)
	
	# for testing battles. Remove for production
	if Input.is_action_just_pressed("ui_Force_Battle"):
		forced_battles()

func forced_battles():
	get_tree().get_root().add_child(simultaneous_scene)


















