extends Control


func _on_aut_pressed() -> void:
	OS.shell_open("https://x.com/bluhoro_art")


#quando apertar no botao voltar
func _on_back_btn_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/start.tscn')
