extends Control

var toque_contador := 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept") or (event is InputEventMouseButton and event.pressed):
		toque_contador += 1
	
	if toque_contador == 1:
		print("Primeiro toque")

	if toque_contador == 2:
		print("Segundo toque - indo para MainMenu")
		get_tree().change_scene_to_file('res://scenes/start.tscn')
