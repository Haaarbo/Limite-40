extends "res://scripts/stacked_sprite/movement_rotation.tres.gd"

func _ready() -> void:
	stsp = $Sprite2D


func _on_visible_screen_exited() -> void:
	queue_free()
