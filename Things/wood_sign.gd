extends Thing

@export var text: String

func _ready():
	super()
	if text: $Label.text = text
