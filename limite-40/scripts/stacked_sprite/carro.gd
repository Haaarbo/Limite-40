extends "res://scripts/pedestre.tres.gd"

func _ready() -> void:
	stsp = $Sprite2D
	SPEED = 500
	velocity = Vector2(SPEED, 0)


func _on_visible_screen_exited() -> void:
	queue_free()
