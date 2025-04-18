extends Label

@export var brain : Brain

func _process(_delta: float) -> void:
	text = brain.active_goal.name
