extends CharacterBody2D

@onready var stsp = $StackedSprite

const SPEED = 1000
const ACCELERATION = 5

func _physics_process(delta: float) -> void:
	var input = Vector2.ZERO
	input.x = Input.get_action_strength("dir") - Input.get_action_strength("esq")
	input.y = Input.get_action_strength("baixo") - Input.get_action_strength("cima")
	
	velocity = lerp(velocity, input * SPEED, ACCELERATION * delta)
	move_and_slide()
	
	if input != Vector2.ZERO:
		stsp.set_rotation_sprites(velocity.angle() - deg_to_rad(90))
