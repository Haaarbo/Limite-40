@tool
extends Sprite2D

@export var show_sprites: bool = false
@export var rotate_sprites: bool = false

func set_show_sprites(_show_sprites):
	show_sprites = _show_sprites
	if show_sprites:
		render_sprites2D()
	else:
		clear_sprites()

func set_rotation_sprites(_rotation):
	for sprite in get_children():
		sprite.rotation = _rotation

func set_rotate_sprites(_rotate_sprites):
	rotate_sprites = _rotate_sprites

func clear_sprites():
	for sprite in get_children():
		sprite.queue_free()

func render_sprites2D():
	clear_sprites()
	for i in range(0, vframes):
		var next_sprite = Sprite2D.new()
		next_sprite.texture = texture
		next_sprite.vframes = vframes
		next_sprite.frame = i
		next_sprite.position.y = -i
		add_child(next_sprite)

func _ready():
	render_sprites2D()

func _process(delta):
	if rotate_sprites:
		for sprite in get_children():
			sprite.rotation += delta
