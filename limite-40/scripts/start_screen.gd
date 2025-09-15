extends Control

#inicia o jogo
func _on_play_btn_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/game.tscn')


#sai do jogo
func _on_quit_btn_pressed() -> void:
	get_tree().quit()


#entra na tela de creditos
func _on_credits_btn_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/credits.tscn')


#redireciona p/ tela de controles
func _on_controls_btn_pressed() -> void:
	get_tree().change_scene_to_file('res://scenes/controls.tscn')


#caso apertem no nome da nossa equipe, redireciona p/ pagina itch.io
func _on_equipe_pressed() -> void:
	OS.shell_open('https://itch.io/')
