extends Door

export(int) var size = 32
export(int) var open_degrees = 90
export(int) var closed_degrees = 0

func _ready():
	duplicate_sprite("Open", open_degrees)
	duplicate_sprite("Closed", closed_degrees)

func duplicate_sprite(name, degrees):
	var copy = $Sprite.duplicate()
	copy.name = copy
	add_child(copy)
	copy.scale.x = size/10
	copy.rotation_degrees = degrees
	return copy
