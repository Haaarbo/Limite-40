extends Node2D

@export var pedestrian_scene: PackedScene
@export var car_scene: PackedScene

#
var pessoas = 0
var carros = 0

var media = carros - pessoas


#Ao iniciar o game
func _on_start_timer_timeout() -> void:
	$PedestrianTimer.start()

#Spawn de pedestres
func _on_pedestrian_timer_timeout() -> void:
	#Instancia um pedestre
	var pedestre = pedestrian_scene.instantiate()
	var pedestre_location = $PedestrianPath/PedestrianFollow
	pedestre_location.progress_ratio = randf()
	
	#180/2 = 90°, valor que ser 
	var direction = pedestre_location.rotation + PI / 2
	#pedestre.rotation = direction
	#direction += randf_range(-PI / 4, PI / 4)
	
	pedestre.position = pedestre_location.position
	
	# Define a velocity do pedestre para andar na direção do path
	pedestre.velocity = Vector2(0, pedestre.SPEED).rotated(direction)  # vetor para baixo ajustado pela rotação
	#var velocity = Vector2(randf_range(150.0, 250.0), 0)
	#pedestre.linear_velocity = velocity.rotated(direction)
	add_child(pedestre)


func _on_car_timer_timeout() -> void:
	#Instancia um pedestre
	var carro = car_scene.instantiate()
	var car_location = $CarPath/CarFollow
	car_location.progress_ratio = randf()
	
	#180/2 = 90°, valor que ser 
	var direction = car_location.rotation + PI / 2
	#pedestre.rotation = direction
	#direction += randf_range(-PI / 4, PI / 4)
	
	carro.position = car_location.position
	
	# Define a velocity do pedestre para andar na direção do path
	carro.velocity = Vector2(0, carro.SPEED).rotated(direction)  # vetor para baixo ajustado pela rotação
	#var velocity = Vector2(randf_range(150.0, 250.0), 0)
	#pedestre.linear_velocity = velocity.rotated(direction)
	add_child(carro)
