extends Area2D

var SPEED = 100
#const ACCELERATION = 5
var velocity: Vector2 = Vector2.ZERO
var stsp

func _ready() -> void:
	velocity = Vector2(0, SPEED)
	stsp = $StackedSprite

func _process(delta: float) -> void:
	position += velocity * delta
	#velocity = lerp(velocity, input * SPEED, ACCELERATION * delta)
	# Aplica o movimento
	position += velocity * delta
	#if input != Vector2.ZERO:
	stsp.set_rotation_sprites(velocity.angle() - deg_to_rad(90))

func _on_visible_screen_exited() -> void:
	queue_free()
