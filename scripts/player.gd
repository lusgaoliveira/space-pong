extends CharacterBody2D

@export var speed = 100

func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x -= speed
	if Input.is_action_pressed("ui_right"):
		velocity.x += speed
	
	if Input.is_action_pressed("ui_up"):
		velocity.y += speed
	if Input.is_action_pressed("ui_down"):
		velocity.y -= speed 
	move_and_collide(velocity * delta)
