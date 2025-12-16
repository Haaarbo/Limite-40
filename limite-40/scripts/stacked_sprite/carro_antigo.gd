extends "res://scripts/pedestre.tres.gd"


func _ready() -> void:
	stsp = $Sprite2D
	SPEED = 500
	velocity = Vector2(SPEED, 0)
	add_to_group("Carro")


func _process(delta: float) -> void:
	#velocity = lerp(velocity, input * SPEED, ACCELERATION * delta)
	# Aplica o movimento
	position += velocity * delta
	#if input != Vector2.ZERO:
	stsp.set_rotation_sprites(velocity.angle() - deg_to_rad(90))
	
	var carro_a_frente = _pegar_alvo_proximo()
	if Input.is_action_pressed('stop') or (carro_a_frente and global_position.distance_to(carro_a_frente.global_position) < 275):
		print($".".position)
		print($".".position.distance_to($".".position))
		_parar(delta)


func _on_area_entered(area: Area2D) -> void:
	queue_free()


func _parar(delta) -> void:
	print('deu')
	velocity = lerp(velocity, Vector2.ZERO, 5 * delta)
	if velocity.length() < 1:
		velocity = Vector2.ZERO
	pass

func _pegar_alvo_proximo() -> Node2D:
	var mais_proximo = null
	var menor_dist = INF
	
	for carro in get_tree().get_nodes_in_group("Carro"):
		if carro == self:
			continue
		
		var distancia = global_position.distance_to(carro.global_position)
		
		if distancia < menor_dist:
			menor_dist = distancia
			mais_proximo = carro

	return mais_proximo
