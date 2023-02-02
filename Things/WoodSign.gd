extends Thing

export(String) var text

func _ready():
	if text: $Label.text = text
