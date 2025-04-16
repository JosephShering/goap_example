@tool
class_name Brain
extends Node

@export var goals : Array[Goal]

@export var actor : Node

func _enter_tree() -> void:
	actor = get_parent()

func tick():
	for goal in goals:
		goal.tick()
