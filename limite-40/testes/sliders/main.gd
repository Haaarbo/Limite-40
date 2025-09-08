extends Control

func _process(delta: float) -> void:
	if Input.is_action_pressed("Play"):
		$TextureProgressBar.value += 10
		$ProgressBar.value += 1
		$SpinBox.value += 1
