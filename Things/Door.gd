extends Door

@export var size: int = 32
@export var open_degrees: int = 90
@export var closed_degrees: int = 0

func _ready():
	super()
	duplicate_sprite("Open", open_degrees)
	duplicate_sprite("Closed", closed_degrees)

func duplicate_sprite(name, degrees):
	var copy = $Sprite2D.duplicate()
	copy.name = copy
	add_child(copy)
	copy.scale.x = size/10
	copy.rotation_degrees = degrees
	return copy
