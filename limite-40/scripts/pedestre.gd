extends Area2D

var SPEED = 100
#const ACCELERATION = 5
var velocity: Vector2 = Vector2.ZERO

func _ready() -> void:
	velocity = Vector2(0, SPEED)
	

func _process(delta: float) -> void:
	position += velocity * delta
	#velocity = lerp(velocity, input * SPEED, ACCELERATION * delta)
	# Aplica o movimento
	position += velocity * delta
	#if input != Vector2.ZERO:
	$animPedestre.play("down")


func _on_visible_screen_exited() -> void:
	get_node("/root/GameController/sliderUI").aplyValue(1, get_groups())
	queue_free()


func _on_area_entered(area: Area2D) -> void:
	queue_free()
