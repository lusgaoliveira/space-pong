extends CharacterBody2D

@export var speed = 250
var ball

func _ready():
	ball = get_parent().get_node("Ball")
	
func _physics_process(delta: float) -> void:
	
	velocity.x = 0
	if Input.is_action_pressed("ui_left") and ball.started:
		velocity.x -= speed
	if Input.is_action_pressed("ui_right") and ball.started:
		velocity.x += speed

	move_and_collide(velocity * delta)
