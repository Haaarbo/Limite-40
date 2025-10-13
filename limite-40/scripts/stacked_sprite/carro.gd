extends "res://scripts/pedestre.tres.gd"

func _ready() -> void:
	stsp = $Sprite2D
	SPEED = 500
	velocity = Vector2(SPEED, 0)


func _process(delta: float) -> void:
	position += velocity * delta
	#velocity = lerp(velocity, input * SPEED, ACCELERATION * delta)
	# Aplica o movimento
	position += velocity * delta
	#if input != Vector2.ZERO:
	stsp.set_rotation_sprites(velocity.angle() - deg_to_rad(90))
	
	if Input.is_action_pressed('stop'):
		_parar(delta)
		


func _on_area_entered(area: Area2D) -> void:
	queue_free()


func _parar(delta) -> void:
	print('deu')
	velocity = lerp(velocity, Vector2.ZERO, 5 * delta)
	if velocity.length() < 1:
		velocity = Vector2.ZERO
	pass
