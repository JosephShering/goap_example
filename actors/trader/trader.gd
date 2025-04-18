class_name Trader
extends Node2D

@onready var brain: Brain = $Brain

@export_group("Stamina")
@export var stamina := 5:
	set(new_value):
		brain.blackboard.set("stamina", new_value)
		stamina = new_value

@export var max_stamina := 10:
	set(new_value):
		brain.blackboard.set("max_stamina", new_value)
		max_stamina = new_value

@export var money := 10.0:
	set(new_money):
		brain.blackboard.set("money", new_money)
		money = new_money

func _ready() -> void:
	brain.blackboard.set("money", money)
	brain.blackboard.set("stamina", stamina)
	brain.blackboard.set("max_stamina", max_stamina)


func _on_area_mouse_entered() -> void:
	pass # Replace with function body.
