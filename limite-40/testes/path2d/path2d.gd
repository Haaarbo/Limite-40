extends Path2D

func _process(delta: float) -> void:
	if Input.is_action_pressed("Play"):
		$PathFollow2D.progress += 10
	elif Input.is_action_pressed("Dissplay"):
		$PathFollow2D.progress -= 10
